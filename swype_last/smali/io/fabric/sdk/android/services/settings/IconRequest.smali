.class public final Lio/fabric/sdk/android/services/settings/IconRequest;
.super Ljava/lang/Object;
.source "IconRequest.java"


# instance fields
.field public final hash:Ljava/lang/String;

.field public final height:I

.field public final iconResourceId:I

.field public final width:I


# direct methods
.method private constructor <init>(Ljava/lang/String;III)V
    .registers 5
    .param p1, "hash"    # Ljava/lang/String;
    .param p2, "iconResourceId"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lio/fabric/sdk/android/services/settings/IconRequest;->hash:Ljava/lang/String;

    .line 22
    iput p2, p0, Lio/fabric/sdk/android/services/settings/IconRequest;->iconResourceId:I

    .line 23
    iput p3, p0, Lio/fabric/sdk/android/services/settings/IconRequest;->width:I

    .line 24
    iput p4, p0, Lio/fabric/sdk/android/services/settings/IconRequest;->height:I

    .line 25
    return-void
.end method

.method public static build(Landroid/content/Context;Ljava/lang/String;)Lio/fabric/sdk/android/services/settings/IconRequest;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "iconHash"    # Ljava/lang/String;

    .prologue
    .line 33
    const/4 v2, 0x0

    .line 37
    .local v2, "iconRequest":Lio/fabric/sdk/android/services/settings/IconRequest;
    if-eqz p1, :cond_23

    .line 39
    :try_start_3
    invoke-static {p0}, Lio/fabric/sdk/android/services/common/CommonUtils;->getAppIconResourceId(Landroid/content/Context;)I

    move-result v1

    .line 40
    .local v1, "iconId":I
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    .line 45
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 46
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v1, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 50
    new-instance v3, Lio/fabric/sdk/android/services/settings/IconRequest;

    iget v5, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v6, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v3, p1, v1, v5, v6}, Lio/fabric/sdk/android/services/settings/IconRequest;-><init>(Ljava/lang/String;III)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_22} :catch_24

    .end local v2    # "iconRequest":Lio/fabric/sdk/android/services/settings/IconRequest;
    .local v3, "iconRequest":Lio/fabric/sdk/android/services/settings/IconRequest;
    move-object v2, v3

    .line 57
    .end local v1    # "iconId":I
    .end local v3    # "iconRequest":Lio/fabric/sdk/android/services/settings/IconRequest;
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v2    # "iconRequest":Lio/fabric/sdk/android/services/settings/IconRequest;
    :cond_23
    :goto_23
    return-object v2

    .line 52
    :catch_24
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v5

    const-string/jumbo v6, "Fabric"

    const-string/jumbo v7, "Failed to load icon"

    invoke-interface {v5, v6, v7, v0}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_23
.end method
