import 'package:big_bite_casher/core/constants/app_colors.dart';
import 'package:big_bite_casher/core/enums/app_languages.dart';
import 'package:big_bite_casher/core/services/cache_storage_services.dart';
import 'package:big_bite_casher/core/translations/app_local.dart';
import 'package:big_bite_casher/generated/locale_keys.g.dart';
import 'package:big_bite_casher/modules/order/presentation/routes/order_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
          child: ListView(
        padding: EdgeInsets.symmetric(vertical: 2.w, horizontal: 5.w),
        children: [
          SizedBox(height: 15.w),
          _buildThemeComponent(context),
          SizedBox(height: 6.w),
          _buildLanguageComponent(context),
          SizedBox(height: 6.w),
          _buildLogoutComponent(context),
        ],
      )),
    );
  }

  Widget _buildThemeComponent(BuildContext context) => Row(
        children: [
          const Icon(Icons.dark_mode_outlined),
          SizedBox(width: 2.w),
        ],
      );

  Widget _buildLogoutComponent(BuildContext context) => Row(
        children: [
          const Icon(Icons.logout),
          SizedBox(width: 3.w),
          TextButton(
            onPressed: () => _logout(context),
            child: Text(
              LocaleKeys.logout.tr(),
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: AppColors.red),
            ),
          )
        ],
      );
}

void _logout(BuildContext context) async {
  await CacheStorageServices().removeToken();
  Future.delayed(
    Duration.zero,
    () => context.go(OrderRoute.name),
  );
}

Widget _buildLanguageComponent(BuildContext context) => Row(
      children: [
        const Icon(Icons.translate),
        SizedBox(width: 2.w),
        TextButton(
          onPressed: () =>
              AppLocale().changeLanguage(context, AppLanguages.english),
          child: Text(
            LocaleKeys.arabic.tr(),
            style: AppLocale().isArabic(context)
                ? Theme.of(context).textTheme.displaySmall
                : Theme.of(context).textTheme.bodySmall,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 1.w),
          child: Text(
            "/",
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
        TextButton(
          onPressed: () =>
              AppLocale().changeLanguage(context, AppLanguages.arabic),
          child: Text(
            LocaleKeys.english.tr(),
            style: AppLocale().isEnglish(context)
                ? Theme.of(context).textTheme.displaySmall
                : Theme.of(context).textTheme.bodySmall,
          ),
        ),
      ],
    );
