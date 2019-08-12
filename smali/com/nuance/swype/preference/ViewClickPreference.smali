.class public Lcom/nuance/swype/preference/ViewClickPreference;
.super Landroid/preference/Preference;
.source "ViewClickPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/preference/ViewClickPreference$ViewClickPreferenceListener;
    }
.end annotation


# instance fields
.field private mCurrentView:Landroid/view/View;

.field private mViewClickPreferenceListener:Lcom/nuance/swype/preference/ViewClickPreference$ViewClickPreferenceListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 37
    iput-object p1, p0, Lcom/nuance/swype/preference/ViewClickPreference;->mCurrentView:Landroid/view/View;

    .line 38
    iget-object v0, p0, Lcom/nuance/swype/preference/ViewClickPreference;->mViewClickPreferenceListener:Lcom/nuance/swype/preference/ViewClickPreference$ViewClickPreferenceListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/preference/ViewClickPreference;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/nuance/swype/preference/ViewClickPreference;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/nuance/swype/preference/ViewClickPreference;->mViewClickPreferenceListener:Lcom/nuance/swype/preference/ViewClickPreference$ViewClickPreferenceListener;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/nuance/swype/preference/ViewClickPreference;->mViewClickPreferenceListener:Lcom/nuance/swype/preference/ViewClickPreference$ViewClickPreferenceListener;

    invoke-interface {v0, p0}, Lcom/nuance/swype/preference/ViewClickPreference$ViewClickPreferenceListener;->onViewClick(Landroid/preference/Preference;)V

    .line 55
    :cond_0
    return-void
.end method

.method public final setListener(Lcom/nuance/swype/preference/ViewClickPreference$ViewClickPreferenceListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/nuance/swype/preference/ViewClickPreference$ViewClickPreferenceListener;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/nuance/swype/preference/ViewClickPreference;->mViewClickPreferenceListener:Lcom/nuance/swype/preference/ViewClickPreference$ViewClickPreferenceListener;

    .line 45
    iget-object v0, p0, Lcom/nuance/swype/preference/ViewClickPreference;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/nuance/swype/preference/ViewClickPreference;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    :cond_0
    return-void
.end method
