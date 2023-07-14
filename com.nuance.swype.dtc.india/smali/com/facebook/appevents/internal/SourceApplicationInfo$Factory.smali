.class public Lcom/facebook/appevents/internal/SourceApplicationInfo$Factory;
.super Ljava/lang/Object;
.source "SourceApplicationInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/internal/SourceApplicationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/app/Activity;)Lcom/facebook/appevents/internal/SourceApplicationInfo;
    .locals 10
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 110
    const/4 v5, 0x0

    .line 112
    .local v5, "openedByApplink":Z
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v2

    .line 113
    .local v2, "callingApplication":Landroid/content/ComponentName;
    if-nez v2, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-object v6

    .line 117
    :cond_1
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, "callingApplicationPackage":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 126
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 127
    .local v4, "openIntent":Landroid/content/Intent;
    if-eqz v4, :cond_2

    const-string/jumbo v7, "_fbSourceApplicationHasBeenSet"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_2

    .line 131
    const-string/jumbo v7, "_fbSourceApplicationHasBeenSet"

    invoke-virtual {v4, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 132
    invoke-static {v4}, Lbolts/AppLinks;->getAppLinkData(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    .line 133
    .local v0, "applinkData":Landroid/os/Bundle;
    if-eqz v0, :cond_2

    .line 134
    const/4 v5, 0x1

    .line 135
    const-string/jumbo v7, "referer_app_link"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 136
    .local v1, "applinkReferrerData":Landroid/os/Bundle;
    if-eqz v1, :cond_2

    .line 137
    const-string/jumbo v7, "package"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 144
    .end local v0    # "applinkData":Landroid/os/Bundle;
    .end local v1    # "applinkReferrerData":Landroid/os/Bundle;
    :cond_2
    const-string/jumbo v7, "_fbSourceApplicationHasBeenSet"

    invoke-virtual {v4, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 145
    new-instance v7, Lcom/facebook/appevents/internal/SourceApplicationInfo;

    invoke-direct {v7, v3, v5, v6}, Lcom/facebook/appevents/internal/SourceApplicationInfo;-><init>(Ljava/lang/String;ZLcom/facebook/appevents/internal/SourceApplicationInfo$1;)V

    move-object v6, v7

    goto :goto_0
.end method
