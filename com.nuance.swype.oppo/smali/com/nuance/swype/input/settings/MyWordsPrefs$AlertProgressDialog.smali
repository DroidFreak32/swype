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
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 974
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 975
    return-void
.end method

.method private setEqualWidth(Landroid/widget/Button;)V
    .locals 3
    .param p1, "button"    # Landroid/widget/Button;

    .prologue
    .line 1038
    if-eqz p1, :cond_0

    .line 1039
    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setMaxLines(I)V

    .line 1040
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1041
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 1042
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1043
    .local v0, "linearLp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, 0x0

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1044
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1045
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1048
    .end local v0    # "linearLp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void
.end method


# virtual methods
.method public inProgress()V
    .locals 1

    .prologue
    .line 978
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;->progressShowing:Z

    .line 979
    return-void
.end method

.method public isProgressShowing()Z
    .locals 1

    .prologue
    .line 1019
    iget-boolean v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;->progressShowing:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1024
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 1026
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v3, v4, :cond_0

    .line 1027
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    .line 1028
    .local v2, "buttonPos":Landroid/widget/Button;
    const/4 v3, -0x2

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 1029
    .local v0, "buttonNeg":Landroid/widget/Button;
    const/4 v3, -0x3

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 1031
    .local v1, "buttonNeu":Landroid/widget/Button;
    invoke-direct {p0, v2}, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;->setEqualWidth(Landroid/widget/Button;)V

    .line 1032
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;->setEqualWidth(Landroid/widget/Button;)V

    .line 1033
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;->setEqualWidth(Landroid/widget/Button;)V

    .line 1035
    .end local v0    # "buttonNeg":Landroid/widget/Button;
    .end local v1    # "buttonNeu":Landroid/widget/Button;
    .end local v2    # "buttonPos":Landroid/widget/Button;
    :cond_0
    return-void
.end method

.method public progressComplete()V
    .locals 1

    .prologue
    .line 1015
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;->progressShowing:Z

    .line 1016
    return-void
.end method

.method public updateView()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 982
    sget v5, Lcom/nuance/swype/input/R$id;->main:I

    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 983
    .local v0, "main":Landroid/view/View;
    sget v5, Lcom/nuance/swype/input/R$id;->progress:I

    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 984
    .local v4, "progress":Landroid/view/View;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-ge v5, v8, :cond_5

    .line 988
    const/4 v5, -0x1

    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    .line 989
    .local v3, "positive":Landroid/widget/Button;
    const/4 v5, -0x2

    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 990
    .local v1, "negative":Landroid/widget/Button;
    const/4 v5, -0x3

    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    .line 996
    .local v2, "neutral":Landroid/widget/Button;
    :goto_0
    if-eqz v0, :cond_0

    .line 997
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 999
    :cond_0
    if-eqz v4, :cond_1

    .line 1000
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1003
    :cond_1
    if-eqz v3, :cond_2

    .line 1004
    iget-boolean v5, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;->progressShowing:Z

    if-nez v5, :cond_6

    move v5, v6

    :goto_1
    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1006
    :cond_2
    if-eqz v1, :cond_3

    .line 1007
    iget-boolean v5, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;->progressShowing:Z

    if-nez v5, :cond_7

    move v5, v6

    :goto_2
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1009
    :cond_3
    if-eqz v2, :cond_4

    .line 1010
    iget-boolean v5, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;->progressShowing:Z

    if-nez v5, :cond_8

    :goto_3
    invoke-virtual {v2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1012
    :cond_4
    return-void

    .line 992
    .end local v1    # "negative":Landroid/widget/Button;
    .end local v2    # "neutral":Landroid/widget/Button;
    .end local v3    # "positive":Landroid/widget/Button;
    :cond_5
    sget v5, Lcom/nuance/swype/input/R$id;->confirm_ok:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 993
    .restart local v3    # "positive":Landroid/widget/Button;
    sget v5, Lcom/nuance/swype/input/R$id;->change_email:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 994
    .restart local v1    # "negative":Landroid/widget/Button;
    sget v5, Lcom/nuance/swype/input/R$id;->resend_code:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .restart local v2    # "neutral":Landroid/widget/Button;
    goto :goto_0

    :cond_6
    move v5, v7

    .line 1004
    goto :goto_1

    :cond_7
    move v5, v7

    .line 1007
    goto :goto_2

    :cond_8
    move v6, v7

    .line 1010
    goto :goto_3
.end method
