import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hell_care/gen/assets.gen.dart';

import '../../controllers/schedule_controller.dart';
import '../../utilities/theme.dart';
import 'schedule_tab.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});

  @override
  State<ScheduleScreen> createState() => _TabBarExampleState();
}

class _TabBarExampleState extends State<ScheduleScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  final ScheduleController scheduleController = Get.put(ScheduleController());

  @override
  void initState() {
    super.initState();
    Get.find<ScheduleController>().onInit();
    tabController = TabController(
      length: 3,
      vsync: this,
      initialIndex: scheduleController.currentIndex.value,
    );
    tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    if (tabController.indexIsChanging) {
      // print('Tab changed to: ${tabController.index}');
      scheduleController.handleTabChange(tabController.index);
    }
  }

  @override
  void dispose() {
    tabController.dispose();
    tabController.removeListener(_handleTabSelection);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResources.white1,
      appBar: AppBar(
        title: Text(
          "Top Doctors",
          style: GoogleFonts.robotoMono(
            color: ColorResources.black6,
            fontSize: FontSizes.sizeLg,
            fontWeight: FontWeight.w600,
            letterSpacing: 1,
          ),
        ),
        centerTitle: false,
        elevation: 0,
        toolbarHeight: 96,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(
                  // "lib/icons/bell.png",
                  Assets.icons.bell.path,
                ),
              )),
            ),
          ),
        ],
        backgroundColor: ColorResources.white1,
      ),
      body: Obx(() {
        if (scheduleController.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }

        var schedules = scheduleController.schedule.value;
        if (schedules == null) {
          return Center(
            child: Text(
              "There is a problem.",
              style: GoogleFonts.robotoMono(
                fontSize: FontSizes.sizeBase,
                fontWeight: FontWeight.w600,
                color: ColorResources.white1,
              ),
            ),
          );
        }

        return SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Container(
                  width: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    border: Border.all(color: ColorResources.white6),
                    color: ColorResources.grey4,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TabBar(
                    indicator: BoxDecoration(
                      color: ColorResources.lightGreen6,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    indicatorColor: const Color.fromARGB(255, 241, 241, 241),
                    unselectedLabelColor: const Color.fromARGB(255, 32, 32, 32),
                    labelColor: ColorResources.white1,
                    controller: tabController,
                    tabs: [
                      Tab(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            "Upcoming",
                            style: GoogleFonts.robotoMono(
                              fontSize: FontSizes.sizeXs,
                              letterSpacing: 1,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      Tab(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4.0),
                          child: Text(
                            "Completed",
                            style: GoogleFonts.robotoMono(
                              fontSize: FontSizes.sizeXs,
                              letterSpacing: 1,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      Tab(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            "Cancel",
                            style: GoogleFonts.robotoMono(
                              fontSize: FontSizes.sizeXs,
                              letterSpacing: 1,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: TabBarView(
                  controller: tabController,
                  children: [
                    ScheduleTab(
                      data: schedules.data,
                    ),
                    ScheduleTab(
                      data: schedules.data,
                    ),
                    ScheduleTab(
                      data: schedules.data,
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
