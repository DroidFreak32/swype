.class public final Lio/fabric/sdk/android/services/settings/AppRequestData;
.super Ljava/lang/Object;
.source "AppRequestData.java"


# instance fields
.field public final apiKey:Ljava/lang/String;

.field public final appId:Ljava/lang/String;

.field public final buildVersion:Ljava/lang/String;

.field public final builtSdkVersion:Ljava/lang/String;

.field public final displayVersion:Ljava/lang/String;

.field public final icon:Lio/fabric/sdk/android/services/settings/IconRequest;

.field public final instanceIdentifier:Ljava/lang/String;

.field public final minSdkVersion:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final sdkKits:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lio/fabric/sdk/android/Kit;",
            ">;"
        }
    .end annotation
.end field

.field public final source:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/settings/IconRequest;Ljava/util/Collection;)V
    .locals 0
    .param p1, "apiKey"    # Ljava/lang/String;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "displayVersion"    # Ljava/lang/String;
    .param p4, "buildVersion"    # Ljava/lang/String;
    .param p5, "instanceIdentifier"    # Ljava/lang/String;
    .param p6, "name"    # Ljava/lang/String;
    .param p7, "source"    # I
    .param p8, "minSdkVersion"    # Ljava/lang/String;
    .param p9, "builtSdkVersion"    # Ljava/lang/String;
    .param p10, "icon"    # Lio/fabric/sdk/android/services/settings/IconRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/fabric/sdk/android/services/settings/IconRequest;",
            "Ljava/util/Collection",
            "<",
            "Lio/fabric/sdk/android/Kit;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p11, "sdkKits":Ljava/util/Collection;, "Ljava/util/Collection<Lio/fabric/sdk/android/Kit;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lio/fabric/sdk/android/services/settings/AppRequestData;->apiKey:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lio/fabric/sdk/android/services/settings/AppRequestData;->appId:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lio/fabric/sdk/android/services/settings/AppRequestData;->displayVersion:Ljava/lang/String;

    .line 34
    iput-object p4, p0, Lio/fabric/sdk/android/services/settings/AppRequestData;->buildVersion:Ljava/lang/String;

    .line 36
    iput-object p5, p0, Lio/fabric/sdk/android/services/settings/AppRequestData;->instanceIdentifier:Ljava/lang/String;

    .line 37
    iput-object p6, p0, Lio/fabric/sdk/android/services/settings/AppRequestData;->name:Ljava/lang/String;

    .line 38
    iput p7, p0, Lio/fabric/sdk/android/services/settings/AppRequestData;->source:I

    .line 39
    iput-object p8, p0, Lio/fabric/sdk/android/services/settings/AppRequestData;->minSdkVersion:Ljava/lang/String;

    .line 40
    iput-object p9, p0, Lio/fabric/sdk/android/services/settings/AppRequestData;->builtSdkVersion:Ljava/lang/String;

    .line 41
    iput-object p10, p0, Lio/fabric/sdk/android/services/settings/AppRequestData;->icon:Lio/fabric/sdk/android/services/settings/IconRequest;

    .line 42
    iput-object p11, p0, Lio/fabric/sdk/android/services/settings/AppRequestData;->sdkKits:Ljava/util/Collection;

    .line 43
    return-void
.end method
