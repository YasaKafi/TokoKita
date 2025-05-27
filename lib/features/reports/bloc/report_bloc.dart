import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:toko_kita/data/models/report/daily_report_model.dart';

import '../../../data/models/report/report_model.dart';
import '../../../data/repositories/report/report_repository.dart';

part 'report_event.dart';
part 'report_state.dart';
part 'report_bloc.freezed.dart';

class ReportBloc extends Bloc<ReportEvent, ReportState> {
  final ReportRepository _repository;

  ReportBloc({required ReportRepository reportRepository}) : _repository = reportRepository, super(const ReportState.initial()) {
    on<_GetMonthlyReport>(_onGetMonthlyReport);
    on<_GetDailyReports>(_onGetDailyReport);
  }

  Future<void> _onGetMonthlyReport(
      _GetMonthlyReport event,
      Emitter<ReportState> emit,
      ) async {
    emit(const ReportState.loading());

    try {
      final reports = await _repository.getMonthlyReports();
      emit(ReportState.success(monthlyReports: reports, dailyReports: []));
    } catch (e) {
      emit(ReportState.error(e.toString()));
    }
  }

  Future<void> _onGetDailyReport(
      _GetDailyReports event,
      Emitter<ReportState> emit,
      ) async {
    emit(const ReportState.loading());

    try {
      final reports = await _repository.getDailyReports(days: event.days);
      emit(ReportState.success(monthlyReports: [], dailyReports: reports));
    } catch (e) {
      emit(ReportState.error(e.toString()));
    }
  }
}
