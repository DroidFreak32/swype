.class public Lcom/nuance/swype/input/settings/ClickSpan;
.super Landroid/text/style/ClickableSpan;
.source "ClickSpan.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/settings/ClickSpan$OnClickListener;
    }
.end annotation


# instance fields
.field private linkColor:I

.field private mListener:Lcom/nuance/swype/input/settings/ClickSpan$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/nuance/swype/input/settings/ClickSpan$OnClickListener;I)V
    .locals 0
    .param p1, "listener"    # Lcom/nuance/swype/input/settings/ClickSpan$OnClickListener;
    .param p2, "linkColor"    # I

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/nuance/swype/input/settings/ClickSpan;->mListener:Lcom/nuance/swype/input/settings/ClickSpan$OnClickListener;

    .line 25
    iput p2, p0, Lcom/nuance/swype/input/settings/ClickSpan;->linkColor:I

    .line 26
    return-void
.end method

.method public static clickify(Landroid/widget/TextView;Ljava/lang/String;Lcom/nuance/swype/input/settings/ClickSpan$OnClickListener;)V
    .locals 10
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "clickableText"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/nuance/swype/input/settings/ClickSpan$OnClickListener;

    .prologue
    const/16 v9, 0x21

    .line 48
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    .line 49
    .local v6, "text":Ljava/lang/CharSequence;
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 50
    .local v5, "string":Ljava/lang/String;
    new-instance v3, Lcom/nuance/swype/input/settings/ClickSpan;

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/nuance/swype/input/R$color;->hyperlink_underline:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-direct {v3, p2, v7}, Lcom/nuance/swype/input/settings/ClickSpan;-><init>(Lcom/nuance/swype/input/settings/ClickSpan$OnClickListener;I)V

    .line 53
    .local v3, "span":Lcom/nuance/swype/input/settings/ClickSpan;
    invoke-virtual {v5, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 54
    .local v4, "start":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int v0, v4, v7

    .line 55
    .local v0, "end":I
    const/4 v7, -0x1

    if-ne v4, v7, :cond_1

    .line 71
    .end local v6    # "text":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-void

    .line 59
    .restart local v6    # "text":Ljava/lang/CharSequence;
    :cond_1
    instance-of v7, v6, Landroid/text/Spannable;

    if-eqz v7, :cond_3

    .line 60
    check-cast v6, Landroid/text/Spannable;

    .end local v6    # "text":Ljava/lang/CharSequence;
    invoke-interface {v6, v3, v4, v0, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 67
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v1

    .line 68
    .local v1, "method":Landroid/text/method/MovementMethod;
    if-eqz v1, :cond_2

    instance-of v7, v1, Landroid/text/method/LinkMovementMethod;

    if-nez v7, :cond_0

    .line 69
    :cond_2
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_0

    .line 62
    .end local v1    # "method":Landroid/text/method/MovementMethod;
    .restart local v6    # "text":Ljava/lang/CharSequence;
    :cond_3
    invoke-static {v6}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v2

    .line 63
    .local v2, "s":Landroid/text/SpannableString;
    invoke-virtual {v2, v3, v4, v0, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 64
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ClickSpan;->mListener:Lcom/nuance/swype/input/settings/ClickSpan$OnClickListener;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ClickSpan;->mListener:Lcom/nuance/swype/input/settings/ClickSpan$OnClickListener;

    invoke-interface {v0}, Lcom/nuance/swype/input/settings/ClickSpan$OnClickListener;->onClick()V

    .line 33
    :cond_0
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 37
    iget v0, p0, Lcom/nuance/swype/input/settings/ClickSpan;->linkColor:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 38
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 39
    return-void
.end method
