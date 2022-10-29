.class public Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;
.super Landroid/app/AlertDialog;
.source "MyWordsPrefs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/MyWordsPrefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertProgressDialog"
.end annotation


# static fields
.field public static final PREF_PROGRESS_SHOWING:Ljava/lang/String; = "progress_showing"


# instance fields
.field private progressShowing:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 977
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 978
    return-void
.end method

.method private setEqualWidth(Landroid/widget/Button;)V
    .registers 5
    .param p1, "button"    # Landroid/widget/Button;

    .prologue
    .line 1046
    if-eqz p1, :cond_1b

    .line 1047
    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setMaxLines(I)V

    .line 1048
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1049
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v2, :cond_1b

    move-object v0, v1

    .line 1050
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1051
    .local v0, "linearLp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, 0x0

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1052
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1053
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1056
    .end local v0    # "linearLp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1b
    return-void
.end method


# virtual methods
.method public inProgress()V
    .registers 2

    .prologue
    .line 981
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;->progressShowing:Z

    .line 982
    return-void
.end method

.method public isProgressShowing()Z
    .registers 2

    .prologue
    .line 1027
    iget-boolean v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;->progressShowing:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1032
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 1034
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v3, v4, :cond_21

    .line 1035
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    .line 1036
    .local v2, "buttonPos":Landroid/widget/Button;
    const/4 v3, -0x2

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 1037
    .local v0, "buttonNeg":Landroid/widget/Button;
    const/4 v3, -0x3

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 1039
    .local v1, "buttonNeu":Landroid/widget/Button;
    invoke-direct {p0, v2}, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;->setEqualWidth(Landroid/widget/Button;)V

    .line 1040
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;->setEqualWidth(Landroid/widget/Button;)V

    .line 1041
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;->setEqualWidth(Landroid/widget/Button;)V

    .line 1043
    .end local v0    # "buttonNeg":Landroid/widget/Button;
    .end local v1    # "buttonNeu":Landroid/widget/Button;
    .end local v2    # "buttonPos":Landroid/widget/Button;
    :cond_21
    return-void
.end method

.method public updateView()V
    .registers 11

    .prologue
    const/4 v9, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 985
    sget v5, Lcom/nuance/swype/input/R$id;->main:I

    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 986
    .local v0, "main":Landroid/view/View;
    sget v5, Lcom/nuance/swype/input/R$id;->progress:I

    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 990
    .local v4, "progress":Landroid/view/View;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-ge v5, v8, :cond_66

    .line 991
    const/4 v5, -0x1

    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    .line 992
    .local v3, "positive":Landroid/widget/Button;
    const/4 v5, -0x2

    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 993
    .local v1, "negative":Landroid/widget/Button;
    const/4 v5, -0x3

    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    .line 999
    .local v2, "neutral":Landroid/widget/Button;
    :goto_24
    if-eqz v0, :cond_29

    .line 1000
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1002
    :cond_29
    if-eqz v4, :cond_2e

    .line 1003
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1006
    :cond_2e
    if-eqz v3, :cond_38

    .line 1007
    iget-boolean v5, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;->progressShowing:Z

    if-nez v5, :cond_7f

    move v5, v6

    :goto_35
    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1009
    :cond_38
    if-eqz v1, :cond_42

    .line 1010
    iget-boolean v5, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;->progressShowing:Z

    if-nez v5, :cond_81

    move v5, v6

    :goto_3f
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1012
    :cond_42
    if-eqz v2, :cond_4c

    .line 1013
    iget-boolean v5, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;->progressShowing:Z

    if-nez v5, :cond_83

    move v5, v6

    :goto_49
    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1016
    :cond_4c
    sget v5, Lcom/nuance/swype/input/R$id;->editText_activation_code:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 1018
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v5

    if-lt v5, v9, :cond_87

    .line 1019
    iget-boolean v5, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;->progressShowing:Z

    if-nez v5, :cond_85

    :goto_62
    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1024
    :goto_65
    return-void

    .line 995
    .end local v1    # "negative":Landroid/widget/Button;
    .end local v2    # "neutral":Landroid/widget/Button;
    .end local v3    # "positive":Landroid/widget/Button;
    :cond_66
    sget v5, Lcom/nuance/swype/input/R$id;->confirm_ok:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 996
    .restart local v3    # "positive":Landroid/widget/Button;
    sget v5, Lcom/nuance/swype/input/R$id;->change_email:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 997
    .restart local v1    # "negative":Landroid/widget/Button;
    sget v5, Lcom/nuance/swype/input/R$id;->resend_code:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .restart local v2    # "neutral":Landroid/widget/Button;
    goto :goto_24

    :cond_7f
    move v5, v7

    .line 1007
    goto :goto_35

    :cond_81
    move v5, v7

    .line 1010
    goto :goto_3f

    :cond_83
    move v5, v7

    .line 1013
    goto :goto_49

    :cond_85
    move v6, v7

    .line 1019
    goto :goto_62

    .line 1022
    :cond_87
    invoke-virtual {v3, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_65
.end method
