.class Lcom/nuance/swype/input/about/AboutBuilders$ClickableSpanNoUnderline;
.super Landroid/text/style/ClickableSpan;
.source "AboutBuilders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/about/AboutBuilders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClickableSpanNoUnderline"
.end annotation


# instance fields
.field private final listener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/view/View$OnClickListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 319
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 320
    iput-object p1, p0, Lcom/nuance/swype/input/about/AboutBuilders$ClickableSpanNoUnderline;->listener:Landroid/view/View$OnClickListener;

    .line 321
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    .line 331
    iget-object v0, p0, Lcom/nuance/swype/input/about/AboutBuilders$ClickableSpanNoUnderline;->listener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_9

    .line 332
    iget-object v0, p0, Lcom/nuance/swype/input/about/AboutBuilders$ClickableSpanNoUnderline;->listener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 334
    :cond_9
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 3
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 325
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 326
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 327
    return-void
.end method
