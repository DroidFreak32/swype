.class Lcom/nuance/swype/input/about/AboutBuilders$ClickableSpanNoUnderline;
.super Landroid/text/style/ClickableSpan;
.source "AboutBuilders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/about/AboutBuilders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ClickableSpanNoUnderline"
.end annotation


# instance fields
.field private final listener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 312
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 313
    iput-object p1, p0, Lcom/nuance/swype/input/about/AboutBuilders$ClickableSpanNoUnderline;->listener:Landroid/view/View$OnClickListener;

    .line 314
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    .line 324
    iget-object v0, p0, Lcom/nuance/swype/input/about/AboutBuilders$ClickableSpanNoUnderline;->listener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/nuance/swype/input/about/AboutBuilders$ClickableSpanNoUnderline;->listener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 327
    :cond_0
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 318
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 319
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 320
    return-void
.end method
