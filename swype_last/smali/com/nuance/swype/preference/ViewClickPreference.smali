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
.field private focusable:Z

.field public mCurrentView:Landroid/view/View;

.field public mKeyListener:Landroid/view/View$OnKeyListener;

.field private mViewClickPreferenceListener:Lcom/nuance/swype/preference/ViewClickPreference$ViewClickPreferenceListener;

.field private setFocus:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 19
    iput-boolean v0, p0, Lcom/nuance/swype/preference/ViewClickPreference;->setFocus:Z

    .line 20
    iput-boolean v0, p0, Lcom/nuance/swype/preference/ViewClickPreference;->focusable:Z

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    iput-boolean v0, p0, Lcom/nuance/swype/preference/ViewClickPreference;->setFocus:Z

    .line 20
    iput-boolean v0, p0, Lcom/nuance/swype/preference/ViewClickPreference;->focusable:Z

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    iput-boolean v0, p0, Lcom/nuance/swype/preference/ViewClickPreference;->setFocus:Z

    .line 20
    iput-boolean v0, p0, Lcom/nuance/swype/preference/ViewClickPreference;->focusable:Z

    .line 38
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 43
    iput-object p1, p0, Lcom/nuance/swype/preference/ViewClickPreference;->mCurrentView:Landroid/view/View;

    .line 44
    iget-object v0, p0, Lcom/nuance/swype/preference/ViewClickPreference;->mViewClickPreferenceListener:Lcom/nuance/swype/preference/ViewClickPreference$ViewClickPreferenceListener;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/nuance/swype/preference/ViewClickPreference;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_12

    .line 45
    iget-object v0, p0, Lcom/nuance/swype/preference/ViewClickPreference;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    :cond_12
    iget-boolean v0, p0, Lcom/nuance/swype/preference/ViewClickPreference;->setFocus:Z

    if-eqz v0, :cond_1b

    .line 49
    iget-boolean v0, p0, Lcom/nuance/swype/preference/ViewClickPreference;->focusable:Z

    invoke-virtual {p0, v0}, Lcom/nuance/swype/preference/ViewClickPreference;->setFocusable(Z)V

    .line 52
    :cond_1b
    iget-object v0, p0, Lcom/nuance/swype/preference/ViewClickPreference;->mKeyListener:Landroid/view/View$OnKeyListener;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/nuance/swype/preference/ViewClickPreference;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_2a

    .line 53
    iget-object v0, p0, Lcom/nuance/swype/preference/ViewClickPreference;->mCurrentView:Landroid/view/View;

    iget-object v1, p0, Lcom/nuance/swype/preference/ViewClickPreference;->mKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 55
    :cond_2a
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/nuance/swype/preference/ViewClickPreference;->mViewClickPreferenceListener:Lcom/nuance/swype/preference/ViewClickPreference$ViewClickPreferenceListener;

    if-eqz v0, :cond_9

    .line 67
    iget-object v0, p0, Lcom/nuance/swype/preference/ViewClickPreference;->mViewClickPreferenceListener:Lcom/nuance/swype/preference/ViewClickPreference$ViewClickPreferenceListener;

    invoke-interface {v0, p0}, Lcom/nuance/swype/preference/ViewClickPreference$ViewClickPreferenceListener;->onViewClick(Landroid/preference/Preference;)V

    .line 69
    :cond_9
    return-void
.end method

.method public final setFocusable(Z)V
    .registers 3
    .param p1, "focusable"    # Z

    .prologue
    .line 72
    iget-object v0, p0, Lcom/nuance/swype/preference/ViewClickPreference;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 73
    iget-object v0, p0, Lcom/nuance/swype/preference/ViewClickPreference;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 79
    :goto_9
    return-void

    .line 76
    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/preference/ViewClickPreference;->setFocus:Z

    .line 77
    iput-boolean p1, p0, Lcom/nuance/swype/preference/ViewClickPreference;->focusable:Z

    goto :goto_9
.end method

.method public final setListener(Lcom/nuance/swype/preference/ViewClickPreference$ViewClickPreferenceListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/nuance/swype/preference/ViewClickPreference$ViewClickPreferenceListener;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/nuance/swype/preference/ViewClickPreference;->mViewClickPreferenceListener:Lcom/nuance/swype/preference/ViewClickPreference$ViewClickPreferenceListener;

    .line 59
    iget-object v0, p0, Lcom/nuance/swype/preference/ViewClickPreference;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 60
    iget-object v0, p0, Lcom/nuance/swype/preference/ViewClickPreference;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    :cond_b
    return-void
.end method
