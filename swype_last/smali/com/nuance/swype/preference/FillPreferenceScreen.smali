.class public Lcom/nuance/swype/preference/FillPreferenceScreen;
.super Landroid/preference/Preference;
.source "FillPreferenceScreen.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 14
    sget v0, Lcom/nuance/swype/input/R$layout;->preference_filltext:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/preference/FillPreferenceScreen;->setLayoutResource(I)V

    .line 15
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/preference/FillPreferenceScreen;->setSelectable(Z)V

    .line 16
    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 20
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 21
    .local v0, "v":Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 22
    return-object v0
.end method
