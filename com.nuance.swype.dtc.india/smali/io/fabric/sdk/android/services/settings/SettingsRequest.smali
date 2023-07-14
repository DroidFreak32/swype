.class public final Lio/fabric/sdk/android/services/settings/SettingsRequest;
.super Ljava/lang/Object;
.source "SettingsRequest.java"


# instance fields
.field public final apiKey:Ljava/lang/String;

.field public final buildVersion:Ljava/lang/String;

.field public final deviceId:Ljava/lang/String;

.field public final displayVersion:Ljava/lang/String;

.field public final iconHash:Ljava/lang/String;

.field public final instanceId:Ljava/lang/String;

.field public final source:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "apiKey"    # Ljava/lang/String;
    .param p2, "deviceId"    # Ljava/lang/String;
    .param p3, "instanceId"    # Ljava/lang/String;
    .param p4, "displayVersion"    # Ljava/lang/String;
    .param p5, "buildVersion"    # Ljava/lang/String;
    .param p6, "source"    # I
    .param p7, "iconHash"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lio/fabric/sdk/android/services/settings/SettingsRequest;->apiKey:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lio/fabric/sdk/android/services/settings/SettingsRequest;->deviceId:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lio/fabric/sdk/android/services/settings/SettingsRequest;->instanceId:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lio/fabric/sdk/android/services/settings/SettingsRequest;->displayVersion:Ljava/lang/String;

    .line 23
    iput-object p5, p0, Lio/fabric/sdk/android/services/settings/SettingsRequest;->buildVersion:Ljava/lang/String;

    .line 24
    iput p6, p0, Lio/fabric/sdk/android/services/settings/SettingsRequest;->source:I

    .line 25
    iput-object p7, p0, Lio/fabric/sdk/android/services/settings/SettingsRequest;->iconHash:Ljava/lang/String;

    .line 26
    return-void
.end method
