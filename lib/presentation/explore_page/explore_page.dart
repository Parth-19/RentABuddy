import '../explore_page/widgets/exploresection_item_widget.dart';
import 'bloc/explore_bloc.dart';
import 'models/explore_model.dart';
import 'models/exploresection_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:renta_buddy/core/app_export.dart';
import 'package:renta_buddy/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key})
      : super(
          key: key,
        );

  @override
  ExplorePageState createState() => ExplorePageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<ExploreBloc>(
      create: (context) => ExploreBloc(ExploreState(
        exploreModelObj: ExploreModel(),
      ))
        ..add(ExploreInitialEvent()),
      child: ExplorePage(),
    );
  }
}

class ExplorePageState extends State<ExplorePage>
    with AutomaticKeepAliveClientMixin<ExplorePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.outlineOnPrimary,
          child: Padding(
            padding: EdgeInsets.only(
              left: 24.h,
              right: 20.h,
            ),
            child: Column(
              children: [
                CustomIconButton(
                  height: 36.adaptSize,
                  width: 36.adaptSize,
                  padding: EdgeInsets.all(10.h),
                  alignment: Alignment.centerRight,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgFrameGray90036x36,
                  ),
                ),
                SizedBox(height: 16.v),
                Container(
                  height: 6.v,
                  width: 160.h,
                  decoration: BoxDecoration(
                    color: appTheme.orange5001,
                    borderRadius: BorderRadius.circular(
                      3.h,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                      3.h,
                    ),
                    child: LinearProgressIndicator(
                      value: 0.49,
                      backgroundColor: appTheme.orange5001,
                      valueColor: AlwaysStoppedAnimation<Color>(
                        theme.colorScheme.onPrimaryContainer.withOpacity(1),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25.v),
                _buildExploreSection(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildExploreSection(BuildContext context) {
    return BlocSelector<ExploreBloc, ExploreState, ExploreModel?>(
      selector: (state) => state.exploreModelObj,
      builder: (context, exploreModelObj) {
        return StaggeredGridView.countBuilder(
          shrinkWrap: true,
          primary: false,
          crossAxisCount: 4,
          crossAxisSpacing: 16.h,
          mainAxisSpacing: 16.h,
          staggeredTileBuilder: (index) {
            return StaggeredTile.fit(2);
          },
          itemCount: exploreModelObj?.exploresectionItemList.length ?? 0,
          itemBuilder: (context, index) {
            ExploresectionItemModel model =
                exploreModelObj?.exploresectionItemList[index] ??
                    ExploresectionItemModel();
            return ExploresectionItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
