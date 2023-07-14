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
    accessFlags = 0xa
    name = "OnURLClickListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/swype/input/about/AboutBuilders$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/nuance/swype/input/about/AboutBuilders$1;

    .prologue
    .line 337
    invoke-direct {p0}, Lcom/nuance/swype/input/about/AboutBuilders$OnURLClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 340
    move-object v5, p1

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 341
    .local v3, "text":Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 342
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 343
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_0

    .line 344
    const/4 v2, 0x0

    .line 347
    .local v2, "faildOnOpenBrowser":Z
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.VIEW"

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 348
    .local v0, "browserIntent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    .end local v0    # "browserIntent":Landroid/content/Intent;
    :goto_0
    if-eqz v2, :cond_0

    .line 358
    :try_start_1
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/nuance/swype/input/about/AboutWebViewActivity;

    invoke-direct {v4, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 359
    .local v4, "webviewIntent":Landroid/content/Intent;
    const-string/jumbo v5, "about_url"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 360
    invoke-virtual {v1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 366
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "faildOnOpenBrowser":Z
    .end local v4    # "webviewIntent":Landroid/content/Intent;
    :cond_0
    :goto_1
    return-void

    .line 351
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v2    # "faildOnOpenBrowser":Z
    :catch_0
    move-exception v5

    const/4 v2, 0x1

    goto :goto_0

    :catch_1
    move-exception v5

    goto :goto_1
.end method
