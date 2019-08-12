.class Lcom/nuance/swype/input/about/AboutBuilders$OnURLClickListener;
.super Ljava/lang/Object;
.source "AboutBuilders.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/about/AboutBuilders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OnURLClickListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/swype/input/about/AboutBuilders$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/nuance/swype/input/about/AboutBuilders$1;

    .prologue
    .line 330
    invoke-direct {p0}, Lcom/nuance/swype/input/about/AboutBuilders$OnURLClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 333
    move-object v6, p1

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 334
    .local v4, "text":Ljava/lang/CharSequence;
    if-eqz v4, :cond_0

    .line 335
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 336
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_0

    .line 337
    const/4 v3, 0x0

    .line 340
    .local v3, "faildOnOpenBrowser":Z
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 341
    .local v0, "browserIntent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    .end local v0    # "browserIntent":Landroid/content/Intent;
    :goto_0
    if-eqz v3, :cond_0

    .line 351
    :try_start_1
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/nuance/swype/input/about/AboutWebViewActivity;

    invoke-direct {v5, v1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 352
    .local v5, "webviewIntent":Landroid/content/Intent;
    const-string v6, "about_url"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 353
    invoke-virtual {v1, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 361
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "faildOnOpenBrowser":Z
    .end local v5    # "webviewIntent":Landroid/content/Intent;
    :cond_0
    :goto_1
    return-void

    .line 343
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v3    # "faildOnOpenBrowser":Z
    :catch_0
    move-exception v2

    .line 344
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    goto :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v6

    goto :goto_1
.end method
