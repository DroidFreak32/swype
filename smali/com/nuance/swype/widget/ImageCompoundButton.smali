.class public Lcom/nuance/swype/widget/ImageCompoundButton;
.super Landroid/widget/ImageButton;
.source "ImageCompoundButton.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/widget/ImageCompoundButton$OnClickListener;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private checked:Z

.field private onCheckedChangeListener$7a6d6a42:Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;

.field private onClickListener:Lcom/nuance/swype/widget/ImageCompoundButton$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/nuance/swype/widget/ImageCompoundButton;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/nuance/swype/widget/ImageCompoundButton;->checked:Z

    return v0
.end method

.method public onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .prologue
    .line 68
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/ImageButton;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 69
    .local v0, "drawableState":[I
    invoke-virtual {p0}, Lcom/nuance/swype/widget/ImageCompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    sget-object v1, Lcom/nuance/swype/widget/ImageCompoundButton;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/nuance/swype/widget/ImageCompoundButton;->mergeDrawableStates([I[I)[I

    .line 72
    :cond_0
    return-object v0
.end method

.method public performClick()Z
    .locals 2

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/nuance/swype/widget/ImageCompoundButton;->toggle()V

    .line 78
    iget-object v0, p0, Lcom/nuance/swype/widget/ImageCompoundButton;->onClickListener:Lcom/nuance/swype/widget/ImageCompoundButton$OnClickListener;

    if-eqz v0, :cond_0

    .line 83
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/widget/ImageCompoundButton;->playSoundEffect(I)V

    .line 84
    iget-object v0, p0, Lcom/nuance/swype/widget/ImageCompoundButton;->onClickListener:Lcom/nuance/swype/widget/ImageCompoundButton$OnClickListener;

    invoke-virtual {p0}, Lcom/nuance/swype/widget/ImageCompoundButton;->isChecked()Z

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/nuance/swype/widget/ImageCompoundButton$OnClickListener;->onClicked(Lcom/nuance/swype/widget/ImageCompoundButton;Z)V

    .line 86
    :cond_0
    invoke-super {p0}, Landroid/widget/ImageButton;->performClick()Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/nuance/swype/widget/ImageCompoundButton;->checked:Z

    if-eq v0, p1, :cond_0

    .line 45
    iput-boolean p1, p0, Lcom/nuance/swype/widget/ImageCompoundButton;->checked:Z

    .line 46
    invoke-virtual {p0}, Lcom/nuance/swype/widget/ImageCompoundButton;->refreshDrawableState()V

    .line 48
    iget-object v0, p0, Lcom/nuance/swype/widget/ImageCompoundButton;->onCheckedChangeListener$7a6d6a42:Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/nuance/swype/widget/ImageCompoundButton;->onCheckedChangeListener$7a6d6a42:Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;

    invoke-virtual {p0}, Lcom/nuance/swype/widget/ImageCompoundButton;->isChecked()Z

    .line 52
    :cond_0
    return-void
.end method

.method public setOnCheckedChangeListener$f97d619(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/nuance/swype/widget/ImageCompoundButton;->onCheckedChangeListener$7a6d6a42:Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;

    .line 60
    return-void
.end method

.method public setOnClickListener(Lcom/nuance/swype/widget/ImageCompoundButton$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/nuance/swype/widget/ImageCompoundButton$OnClickListener;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/nuance/swype/widget/ImageCompoundButton;->onClickListener:Lcom/nuance/swype/widget/ImageCompoundButton$OnClickListener;

    .line 64
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/nuance/swype/widget/ImageCompoundButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/nuance/swype/widget/ImageCompoundButton;->setChecked(Z)V

    .line 56
    return-void

    .line 55
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
