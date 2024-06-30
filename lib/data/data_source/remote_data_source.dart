import 'package:sport/commons/other/lists.dart';
import 'package:sport/data/api_config/api_client.dart';
import 'package:sport/data/api_config/api_config.dart';
import 'package:sport/domain/models/category/category_model.dart';
import 'package:sport/domain/models/search/search_model.dart';
import 'package:sport/domain/models/tournament_model/tournaments.dart';
import 'package:sport/domain/models/tournament_specific_model/tour_model.dart';

abstract class RemouteTournament {
  Future<List<dynamic>> getDateTournaments();
}
abstract class RemouteCategory{
  Future<List<dynamic>> getCategoryList(int id);
}

abstract class RemouteSearch {
  Future<List<dynamic>> getSearchList(String name);
}

class RemouteTournamentImple extends RemouteTournament {
  final ApiClient apiClient;

  RemouteTournamentImple({required this.apiClient});

  @override
  Future<List<dynamic>> getDateTournaments() async {
    final Map<String, dynamic> response = await apiClient.get(
        ApiConfig.dateUrl,{'date': '2024-06-29'});
    final List list=response['tournaments'].map((e)=>TourModel.fromJson(e)).toList() ;

    return list;
  }
}

class RemouteCategoryImple extends RemouteCategory{

  final ApiClient apiClient;

  RemouteCategoryImple({required this.apiClient});
  @override
  Future<List<dynamic>> getCategoryList(int id)async {
    final Map<String, dynamic> response = await apiClient.get(
        //'${ApiConfig.categoryListUrl}${categoryNameList[id]}/categories',
        'api/v1/sport/${categoryNameList[id]}/categories',
        {}
    );
    final List list=response['categories'].map((e)=>CategoryModel.fromJson(e)).toList() ;

    return list;
  }

}

class RemouteSearchImple extends RemouteSearch{

  final ApiClient apiClient;

 RemouteSearchImple(this.apiClient);

  @override
  Future<List> getSearchList(String name)async {
    final Map<String, dynamic> response = await apiClient.get(

        'api/v1/search/players/$name/more',
        {}
    );
   final List list=response['players'].isEmpty?[]: response['players'].map((e)=>SearchModel.fromJson(e)).toList();

    return list;
  }

}
