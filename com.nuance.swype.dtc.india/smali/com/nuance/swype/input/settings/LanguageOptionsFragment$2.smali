.class Lcom/nuance/swype/input/settings/LanguageOptionsFragment$2;
.super Ljava/lang/Object;
.source "LanguageOptionsFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/LanguageOptionsFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/LanguageOptionsFragment;

.field final synthetic val$list:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/LanguageOptionsFragment;Landroid/widget/ListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/LanguageOptionsFragment;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$2;->this$0:Lcom/nuance/swype/input/settings/LanguageOptionsFragment;

    iput-object p2, p0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$2;->val$list:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 269
    const/16 v6, 0x14

    if-eq p2, v6, :cond_0

    const/16 v6, 0x13

    if-eq p2, v6, :cond_0

    const/16 v6, 0x15

    if-eq p2, v6, :cond_0

    const/16 v6, 0x16

    if-eq p2, v6, :cond_0

    .line 307
    :goto_0
    return v4

    .line 275
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_1

    .line 276
    iget-object v4, p0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$2;->this$0:Lcom/nuance/swype/input/settings/LanguageOptionsFragment;

    invoke-static {v4, v5}, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;->access$002(Lcom/nuance/swype/input/settings/LanguageOptionsFragment;Z)Z

    move v4, v5

    .line 277
    goto :goto_0

    .line 282
    :cond_1
    iget-object v6, p0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$2;->this$0:Lcom/nuance/swype/input/settings/LanguageOptionsFragment;

    invoke-static {v6}, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;->access$000(Lcom/nuance/swype/input/settings/LanguageOptionsFragment;)Z

    move-result v6

    if-nez v6, :cond_2

    move v4, v5

    .line 283
    goto :goto_0

    .line 285
    :cond_2
    iget-object v6, p0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$2;->this$0:Lcom/nuance/swype/input/settings/LanguageOptionsFragment;

    invoke-static {v6, v4}, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;->access$002(Lcom/nuance/swype/input/settings/LanguageOptionsFragment;Z)Z

    .line 288
    iget-object v4, p0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$2;->val$list:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v4

    .line 289
    if-ne v4, v5, :cond_3

    .line 292
    iget-object v4, p0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$2;->val$list:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    .line 293
    .local v1, "currentLanguage":Landroid/view/View;
    sget v4, Lcom/nuance/swype/input/R$id;->language_item:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 294
    .local v2, "language":Landroid/view/View;
    sget v4, Lcom/nuance/swype/input/R$id;->language_preference_additional_name:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 295
    .local v0, "additionalLanguage":Landroid/view/View;
    const v4, 0x1020018

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 298
    .local v3, "mode":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isFocused()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->isFocused()Z

    move-result v4

    if-nez v4, :cond_4

    .line 299
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move v4, v5

    .line 300
    goto :goto_0

    .line 304
    .end local v0    # "additionalLanguage":Landroid/view/View;
    .end local v1    # "currentLanguage":Landroid/view/View;
    .end local v2    # "language":Landroid/view/View;
    .end local v3    # "mode":Landroid/view/View;
    :cond_3
    iget-object v4, p0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$2;->this$0:Lcom/nuance/swype/input/settings/LanguageOptionsFragment;

    invoke-static {v4, p1, p2, p3}, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;->access$100(Lcom/nuance/swype/input/settings/LanguageOptionsFragment;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    :cond_4
    move v4, v5

    .line 307
    goto :goto_0
.end method
