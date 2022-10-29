.class final Lio/fabric/sdk/android/services/settings/AppIconSettingsData;
.super Ljava/lang/Object;
.source "AppIconSettingsData.java"


# instance fields
.field public final hash:Ljava/lang/String;

.field public final height:I

.field public final width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p1, "hash"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lio/fabric/sdk/android/services/settings/AppIconSettingsData;->hash:Ljava/lang/String;

    .line 15
    iput p2, p0, Lio/fabric/sdk/android/services/settings/AppIconSettingsData;->width:I

    .line 16
    iput p3, p0, Lio/fabric/sdk/android/services/settings/AppIconSettingsData;->height:I

    .line 17
    return-void
.end method
