.class public final Lio/fabric/sdk/android/services/settings/SettingsData;
.super Ljava/lang/Object;
.source "SettingsData.java"


# instance fields
.field public final analyticsSettingsData:Lio/fabric/sdk/android/services/settings/AnalyticsSettingsData;

.field public final appData:Lio/fabric/sdk/android/services/settings/AppSettingsData;

.field public final betaSettingsData:Lio/fabric/sdk/android/services/settings/BetaSettingsData;

.field public final cacheDuration:I

.field public final expiresAtMillis:J

.field public final featuresData:Lio/fabric/sdk/android/services/settings/FeaturesSettingsData;

.field public final promptData:Lio/fabric/sdk/android/services/settings/PromptSettingsData;

.field public final sessionData:Lio/fabric/sdk/android/services/settings/SessionSettingsData;

.field public final settingsVersion:I


# direct methods
.method public constructor <init>(JLio/fabric/sdk/android/services/settings/AppSettingsData;Lio/fabric/sdk/android/services/settings/SessionSettingsData;Lio/fabric/sdk/android/services/settings/PromptSettingsData;Lio/fabric/sdk/android/services/settings/FeaturesSettingsData;Lio/fabric/sdk/android/services/settings/AnalyticsSettingsData;Lio/fabric/sdk/android/services/settings/BetaSettingsData;II)V
    .registers 12
    .param p1, "expiresAtMillis"    # J
    .param p3, "appData"    # Lio/fabric/sdk/android/services/settings/AppSettingsData;
    .param p4, "sessionData"    # Lio/fabric/sdk/android/services/settings/SessionSettingsData;
    .param p5, "promptData"    # Lio/fabric/sdk/android/services/settings/PromptSettingsData;
    .param p6, "featuresData"    # Lio/fabric/sdk/android/services/settings/FeaturesSettingsData;
    .param p7, "analyticsSettingsData"    # Lio/fabric/sdk/android/services/settings/AnalyticsSettingsData;
    .param p8, "betaSettingsData"    # Lio/fabric/sdk/android/services/settings/BetaSettingsData;
    .param p9, "settingsVersion"    # I
    .param p10, "cacheDuration"    # I

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-wide p1, p0, Lio/fabric/sdk/android/services/settings/SettingsData;->expiresAtMillis:J

    .line 24
    iput-object p3, p0, Lio/fabric/sdk/android/services/settings/SettingsData;->appData:Lio/fabric/sdk/android/services/settings/AppSettingsData;

    .line 25
    iput-object p4, p0, Lio/fabric/sdk/android/services/settings/SettingsData;->sessionData:Lio/fabric/sdk/android/services/settings/SessionSettingsData;

    .line 26
    iput-object p5, p0, Lio/fabric/sdk/android/services/settings/SettingsData;->promptData:Lio/fabric/sdk/android/services/settings/PromptSettingsData;

    .line 27
    iput-object p6, p0, Lio/fabric/sdk/android/services/settings/SettingsData;->featuresData:Lio/fabric/sdk/android/services/settings/FeaturesSettingsData;

    .line 28
    iput p9, p0, Lio/fabric/sdk/android/services/settings/SettingsData;->settingsVersion:I

    .line 29
    iput p10, p0, Lio/fabric/sdk/android/services/settings/SettingsData;->cacheDuration:I

    .line 30
    iput-object p7, p0, Lio/fabric/sdk/android/services/settings/SettingsData;->analyticsSettingsData:Lio/fabric/sdk/android/services/settings/AnalyticsSettingsData;

    .line 31
    iput-object p8, p0, Lio/fabric/sdk/android/services/settings/SettingsData;->betaSettingsData:Lio/fabric/sdk/android/services/settings/BetaSettingsData;

    .line 32
    return-void
.end method
