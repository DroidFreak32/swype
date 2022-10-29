.class final Lcom/crashlytics/android/Crashlytics$5;
.super Ljava/lang/Object;
.source "Crashlytics.java"

# interfaces
.implements Lio/fabric/sdk/android/services/settings/Settings$SettingsAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/Crashlytics;->shouldPromptUserBeforeSendingCrashReports()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/fabric/sdk/android/services/settings/Settings$SettingsAccess",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/crashlytics/android/Crashlytics;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/Crashlytics;)V
    .registers 2

    .prologue
    .line 931
    iput-object p1, p0, Lcom/crashlytics/android/Crashlytics$5;->this$0:Lcom/crashlytics/android/Crashlytics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic usingSettings(Lio/fabric/sdk/android/services/settings/SettingsData;)Ljava/lang/Object;
    .registers 5
    .param p1, "x0"    # Lio/fabric/sdk/android/services/settings/SettingsData;

    .prologue
    const/4 v0, 0x0

    .line 931
    .line 1934
    iget-object v1, p1, Lio/fabric/sdk/android/services/settings/SettingsData;->featuresData:Lio/fabric/sdk/android/services/settings/FeaturesSettingsData;

    iget-boolean v1, v1, Lio/fabric/sdk/android/services/settings/FeaturesSettingsData;->promptEnabled:Z

    if-eqz v1, :cond_21

    .line 1935
    iget-object v1, p0, Lcom/crashlytics/android/Crashlytics$5;->this$0:Lcom/crashlytics/android/Crashlytics;

    .line 1944
    new-instance v2, Lio/fabric/sdk/android/services/persistence/PreferenceStoreImpl;

    invoke-direct {v2, v1}, Lio/fabric/sdk/android/services/persistence/PreferenceStoreImpl;-><init>(Lio/fabric/sdk/android/Kit;)V

    .line 1945
    invoke-interface {v2}, Lio/fabric/sdk/android/services/persistence/PreferenceStore;->get()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "always_send_reports_opt_in"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1935
    if-nez v1, :cond_1c

    const/4 v0, 0x1

    :cond_1c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_20
    return-object v0

    .line 1937
    :cond_21
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_20
.end method
