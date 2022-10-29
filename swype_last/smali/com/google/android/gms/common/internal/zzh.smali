.class public final Lcom/google/android/gms/common/internal/zzh;
.super Ljava/lang/Object;


# static fields
.field private static final yo:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/zzh;->yo:Landroid/support/v4/util/SimpleArrayMap;

    return-void
.end method

.method public static zzc(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sparse-switch p1, :sswitch_data_ec

    sget v0, Lcom/google/android/gms/R$string;->common_google_play_services_unknown_issue:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_14
    return-object v0

    .line 1000
    :sswitch_15
    if-nez v3, :cond_25

    move v0, v2

    .line 0
    :goto_18
    if-eqz v0, :cond_7d

    sget v0, Lcom/google/android/gms/R$string;->common_google_play_services_install_text_tablet:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 1000
    :cond_25
    sget-object v0, Lcom/google/android/gms/common/util/zzi;->AX:Ljava/lang/Boolean;

    if-nez v0, :cond_70

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    if-le v0, v5, :cond_77

    move v0, v1

    .line 2000
    :goto_34
    const/16 v4, 0xb

    invoke-static {v4}, Lcom/google/android/gms/common/util/zzs;->zzhb(I)Z

    move-result v4

    .line 1000
    if-eqz v4, :cond_3e

    if-nez v0, :cond_69

    .line 3000
    :cond_3e
    sget-object v0, Lcom/google/android/gms/common/util/zzi;->AY:Ljava/lang/Boolean;

    if-nez v0, :cond_61

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 4000
    const/16 v4, 0xd

    invoke-static {v4}, Lcom/google/android/gms/common/util/zzs;->zzhb(I)Z

    move-result v4

    .line 3000
    if-eqz v4, :cond_79

    iget v4, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    if-gt v4, v5, :cond_79

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v4, 0x258

    if-lt v0, v4, :cond_79

    move v0, v1

    :goto_5b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/zzi;->AY:Ljava/lang/Boolean;

    :cond_61
    sget-object v0, Lcom/google/android/gms/common/util/zzi;->AY:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1000
    if-eqz v0, :cond_7b

    :cond_69
    move v0, v1

    :goto_6a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/zzi;->AX:Ljava/lang/Boolean;

    :cond_70
    sget-object v0, Lcom/google/android/gms/common/util/zzi;->AX:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_18

    :cond_77
    move v0, v2

    goto :goto_34

    :cond_79
    move v0, v2

    .line 3000
    goto :goto_5b

    :cond_7b
    move v0, v2

    .line 1000
    goto :goto_6a

    .line 0
    :cond_7d
    sget v0, Lcom/google/android/gms/R$string;->common_google_play_services_install_text_phone:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :sswitch_88
    sget v0, Lcom/google/android/gms/R$string;->common_google_play_services_enable_text:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :sswitch_93
    sget v0, Lcom/google/android/gms/R$string;->common_google_play_services_updating_text:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    :sswitch_9f
    sget v0, Lcom/google/android/gms/R$string;->common_google_play_services_update_text:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    :sswitch_ab
    sget v0, Lcom/google/android/gms/R$string;->common_google_play_services_wear_update_text:I

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    :sswitch_b3
    sget v0, Lcom/google/android/gms/R$string;->common_google_play_services_unsupported_text:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    :sswitch_bf
    const-string/jumbo v0, "common_google_play_services_network_error_text"

    invoke-static {p0, v0, p2}, Lcom/google/android/gms/common/internal/zzh;->zze(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    :sswitch_c8
    const-string/jumbo v0, "common_google_play_services_invalid_account_text"

    invoke-static {p0, v0, p2}, Lcom/google/android/gms/common/internal/zzh;->zze(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    :sswitch_d1
    const-string/jumbo v0, "common_google_play_services_api_unavailable_text"

    invoke-static {p0, v0, p2}, Lcom/google/android/gms/common/internal/zzh;->zze(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    :sswitch_da
    const-string/jumbo v0, "common_google_play_services_sign_in_failed_text"

    invoke-static {p0, v0, p2}, Lcom/google/android/gms/common/internal/zzh;->zze(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    :sswitch_e3
    const-string/jumbo v0, "common_google_play_services_restricted_profile_text"

    invoke-static {p0, v0, p2}, Lcom/google/android/gms/common/internal/zzh;->zze(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    :sswitch_data_ec
    .sparse-switch
        0x1 -> :sswitch_15
        0x2 -> :sswitch_9f
        0x3 -> :sswitch_88
        0x5 -> :sswitch_c8
        0x7 -> :sswitch_bf
        0x9 -> :sswitch_b3
        0x10 -> :sswitch_d1
        0x11 -> :sswitch_da
        0x12 -> :sswitch_93
        0x14 -> :sswitch_e3
        0x2a -> :sswitch_ab
    .end sparse-switch
.end method

.method public static zzd(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x6

    if-ne p1, v0, :cond_b

    const-string/jumbo v0, "common_google_play_services_resolution_required_text"

    invoke-static {p0, v0, p2}, Lcom/google/android/gms/common/internal/zzh;->zze(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/zzh;->zzc(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method private static zze(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/zzh;->zzn(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    sget v0, Lcom/google/android/gms/R$string;->common_google_play_services_unknown_issue:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_10
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzf(Landroid/content/Context;I)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sparse-switch p1, :sswitch_data_c0

    const-string/jumbo v1, "GoogleApiAvailability"

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x21

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Unexpected error code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_24
    :sswitch_24
    return-object v0

    :sswitch_25
    sget v0, Lcom/google/android/gms/R$string;->common_google_play_services_install_title:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    :sswitch_2c
    sget v0, Lcom/google/android/gms/R$string;->common_google_play_services_enable_title:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    :sswitch_33
    sget v0, Lcom/google/android/gms/R$string;->common_google_play_services_updating_title:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    :sswitch_3a
    sget v0, Lcom/google/android/gms/R$string;->common_google_play_services_update_title:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    :sswitch_41
    const-string/jumbo v0, "GoogleApiAvailability"

    const-string/jumbo v2, "Google Play services is invalid. Cannot recover."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/google/android/gms/R$string;->common_google_play_services_unsupported_title:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    :sswitch_51
    const-string/jumbo v0, "GoogleApiAvailability"

    const-string/jumbo v1, "Network error occurred. Please retry request later."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "common_google_play_services_network_error_title"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/zzh;->zzn(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    :sswitch_62
    const-string/jumbo v1, "GoogleApiAvailability"

    const-string/jumbo v2, "Internal error occurred. Please see logs for detailed information"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    :sswitch_6c
    const-string/jumbo v1, "GoogleApiAvailability"

    const-string/jumbo v2, "Developer error occurred. Please see logs for detailed information"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    :sswitch_76
    const-string/jumbo v0, "GoogleApiAvailability"

    const-string/jumbo v1, "An invalid account was specified when connecting. Please provide a valid account."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "common_google_play_services_invalid_account_title"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/zzh;->zzn(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    :sswitch_87
    const-string/jumbo v1, "GoogleApiAvailability"

    const-string/jumbo v2, "The application is not licensed to the user."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    :sswitch_91
    const-string/jumbo v1, "GoogleApiAvailability"

    const-string/jumbo v2, "One of the API components you attempted to connect to is not available."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    :sswitch_9b
    const-string/jumbo v0, "GoogleApiAvailability"

    const-string/jumbo v1, "The specified account could not be signed in."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "common_google_play_services_sign_in_failed_title"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/zzh;->zzn(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_24

    :sswitch_ad
    const-string/jumbo v0, "GoogleApiAvailability"

    const-string/jumbo v1, "The current user profile is restricted and could not use authenticated features."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "common_google_play_services_restricted_profile_title"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/zzh;->zzn(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_24

    nop

    :sswitch_data_c0
    .sparse-switch
        0x1 -> :sswitch_25
        0x2 -> :sswitch_3a
        0x3 -> :sswitch_2c
        0x4 -> :sswitch_24
        0x5 -> :sswitch_76
        0x6 -> :sswitch_24
        0x7 -> :sswitch_51
        0x8 -> :sswitch_62
        0x9 -> :sswitch_41
        0xa -> :sswitch_6c
        0xb -> :sswitch_87
        0x10 -> :sswitch_91
        0x11 -> :sswitch_9b
        0x12 -> :sswitch_33
        0x14 -> :sswitch_ad
        0x2a -> :sswitch_3a
    .end sparse-switch
.end method

.method public static zzg(Landroid/content/Context;I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x6

    if-ne p1, v0, :cond_b

    const-string/jumbo v0, "common_google_play_services_resolution_required_title"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/zzh;->zzn(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/zzh;->zzf(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public static zzh(Landroid/content/Context;I)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    packed-switch p1, :pswitch_data_24

    const v1, 0x104000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :pswitch_f
    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_install_button:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :pswitch_16
    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_enable_button:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :pswitch_1d
    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_update_button:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_f
        :pswitch_1d
        :pswitch_16
    .end packed-switch
.end method

.method private static zzn(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/gms/common/internal/zzh;->yo:Landroid/support/v4/util/SimpleArrayMap;

    monitor-enter v2

    :try_start_4
    sget-object v0, Lcom/google/android/gms/common/internal/zzh;->yo:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_10

    monitor-exit v2

    :goto_f
    return-object v0

    :cond_10
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getRemoteResource(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_19

    monitor-exit v2

    move-object v0, v1

    goto :goto_f

    :cond_19
    const-string/jumbo v3, "string"

    const-string/jumbo v4, "com.google.android.gms"

    invoke-virtual {v0, p1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_48

    const-string/jumbo v3, "GoogleApiAvailability"

    const-string/jumbo v4, "Missing resource: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_3f

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_39
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    move-object v0, v1

    goto :goto_f

    :cond_3f
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_39

    :catchall_45
    move-exception v0

    monitor-exit v2
    :try_end_47
    .catchall {:try_start_4 .. :try_end_47} :catchall_45

    throw v0

    :cond_48
    :try_start_48
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_72

    const-string/jumbo v3, "GoogleApiAvailability"

    const-string/jumbo v4, "Got empty resource: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_6c

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_66
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    move-object v0, v1

    goto :goto_f

    :cond_6c
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_66

    :cond_72
    sget-object v1, Lcom/google/android/gms/common/internal/zzh;->yo:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_78
    .catchall {:try_start_48 .. :try_end_78} :catchall_45

    goto :goto_f
.end method
