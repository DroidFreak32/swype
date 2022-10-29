.class public final Lcom/google/android/gms/internal/zzaqa;
.super Ljava/lang/Object;


# static fields
.field private static bkw:Ljava/lang/String;


# direct methods
.method public static zzex(Landroid/content/Context;)Ljava/lang/String;
    .registers 11

    const/4 v2, 0x0

    const/4 v9, 0x0

    sget-object v0, Lcom/google/android/gms/internal/zzaqa;->bkw:Ljava/lang/String;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/google/android/gms/internal/zzaqa;->bkw:Ljava/lang/String;

    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.VIEW"

    const-string/jumbo v1, "http://www.example.com"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v4, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, v4, v9}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_cc

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object v1, v0

    :goto_27
    invoke-virtual {v3, v4, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_34
    :goto_34
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v8, "android.support.customtabs.action.CustomTabsService"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3, v7, v9}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    if-eqz v7, :cond_34

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_34

    :cond_60
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6b

    sput-object v2, Lcom/google/android/gms/internal/zzaqa;->bkw:Ljava/lang/String;

    :cond_68
    :goto_68
    sget-object v0, Lcom/google/android/gms/internal/zzaqa;->bkw:Ljava/lang/String;

    goto :goto_8

    :cond_6b
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_7b

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/zzaqa;->bkw:Ljava/lang/String;

    goto :goto_68

    :cond_7b
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_90

    invoke-static {p0, v4}, Lcom/google/android/gms/internal/zzaqa;->zzq(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_90

    invoke-interface {v5, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    sput-object v1, Lcom/google/android/gms/internal/zzaqa;->bkw:Ljava/lang/String;

    goto :goto_68

    :cond_90
    const-string/jumbo v0, "com.android.chrome"

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9f

    const-string/jumbo v0, "com.android.chrome"

    sput-object v0, Lcom/google/android/gms/internal/zzaqa;->bkw:Ljava/lang/String;

    goto :goto_68

    :cond_9f
    const-string/jumbo v0, "com.chrome.beta"

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ae

    const-string/jumbo v0, "com.chrome.beta"

    sput-object v0, Lcom/google/android/gms/internal/zzaqa;->bkw:Ljava/lang/String;

    goto :goto_68

    :cond_ae
    const-string/jumbo v0, "com.chrome.dev"

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bd

    const-string/jumbo v0, "com.chrome.dev"

    sput-object v0, Lcom/google/android/gms/internal/zzaqa;->bkw:Ljava/lang/String;

    goto :goto_68

    :cond_bd
    const-string/jumbo v0, "com.google.android.apps.chrome"

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    const-string/jumbo v0, "com.google.android.apps.chrome"

    sput-object v0, Lcom/google/android/gms/internal/zzaqa;->bkw:Ljava/lang/String;

    goto :goto_68

    :cond_cc
    move-object v1, v2

    goto/16 :goto_27
.end method

.method private static zzq(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 7

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v2, 0x40

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_15

    :cond_13
    move v0, v1

    :goto_14
    return v0

    :cond_15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    if-eqz v3, :cond_19

    invoke-virtual {v3}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v4

    if-eqz v4, :cond_19

    invoke-virtual {v3}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v3

    if-eqz v3, :cond_19

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_37
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_37} :catch_3b

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    goto :goto_14

    :catch_3b
    move-exception v0

    const-string/jumbo v0, "CustomTabsHelper"

    const-string/jumbo v2, "Runtime exception while getting specialized handlers"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    move v0, v1

    goto :goto_14
.end method
