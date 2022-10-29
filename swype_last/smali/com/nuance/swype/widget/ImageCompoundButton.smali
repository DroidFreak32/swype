.class public Lcom/nuance/swype/widget/ImageCompoundButton;
.super Landroid/widget/ImageButton;
.source "ImageCompoundButton.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/widget/ImageCompoundButton$OnClickListener;,
        Lcom/nuance/swype/widget/ImageCompoundButton$OnCheckedChangeListener;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private checked:Z

.field private onCheckedChangeListener:Lcom/nuance/swype/widget/ImageCompoundButton$OnCheckedChangeListener;

.field private onClickListener:Lcom/nuance/swype/widget/ImageCompoundButton$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 24
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/nuance/swype/widget/ImageCompoundButton;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .registers 2

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/nuance/swype/widget/ImageCompoundButton;->checked:Z

    return v0
.end method

.method public onCreateDrawableState(I)[I
    .registers 4
    .param p1, "extraSpace"    # I

    .prologue
    .line 67
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/ImageButton;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 68
    .local v0, "drawableState":[I
    invoke-virtual {p0}, Lcom/nuance/swype/widget/ImageCompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 69
    sget-object v1, Lcom/nuance/swype/widget/ImageCompoundButton;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/nuance/swype/widget/ImageCompoundButton;->mergeDrawableStates([I[I)[I

    .line 71
    :cond_11
    return-object v0
.end method

.method public performClick()Z
    .registers 3

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/nuance/swype/widget/ImageCompoundButton;->toggle()V

    .line 77
    iget-object v0, p0, Lcom/nuance/swype/widget/ImageCompoundButton;->onClickListener:Lcom/nuance/swype/widget/ImageCompoundButton$OnClickListener;

    if-eqz v0, :cond_14

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/widget/ImageCompoundButton;->playSoundEffect(I)V

    .line 83
    iget-object v0, p0, Lcom/nuance/swype/widget/ImageCompoundButton;->onClickListener:Lcom/nuance/swype/widget/ImageCompoundButton$OnClickListener;

    invoke-virtual {p0}, Lcom/nuance/swype/widget/ImageCompoundButton;->isChecked()Z

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/nuance/swype/widget/ImageCompoundButton$OnClickListener;->onClicked(Lcom/nuance/swype/widget/ImageCompoundButton;Z)V

    .line 85
    :cond_14
    invoke-super {p0}, Landroid/widget/ImageButton;->performClick()Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)V
    .registers 3
    .param p1, "checked"    # Z

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/nuance/swype/widget/ImageCompoundButton;->checked:Z

    if-eq v0, p1, :cond_10

    .line 44
    iput-boolean p1, p0, Lcom/nuance/swype/widget/ImageCompoundButton;->checked:Z

    .line 45
    invoke-virtual {p0}, Lcom/nuance/swype/widget/ImageCompoundButton;->refreshDrawableState()V

    .line 47
    iget-object v0, p0, Lcom/nuance/swype/widget/ImageCompoundButton;->onCheckedChangeListener:Lcom/nuance/swype/widget/ImageCompoundButton$OnCheckedChangeListener;

    if-eqz v0, :cond_10

    .line 48
    invoke-virtual {p0}, Lcom/nuance/swype/widget/ImageCompoundButton;->isChecked()Z

    .line 51
    :cond_10
    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/nuance/swype/widget/ImageCompoundButton$OnCheckedChangeListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/nuance/swype/widget/ImageCompoundButton$OnCheckedChangeListener;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/nuance/swype/widget/ImageCompoundButton;->onCheckedChangeListener:Lcom/nuance/swype/widget/ImageCompoundButton$OnCheckedChangeListener;

    .line 59
    return-void
.end method

.method public setOnClickListener(Lcom/nuance/swype/widget/ImageCompoundButton$OnClickListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/nuance/swype/widget/ImageCompoundButton$OnClickListener;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/nuance/swype/widget/ImageCompoundButton;->onClickListener:Lcom/nuance/swype/widget/ImageCompoundButton$OnClickListener;

    .line 63
    return-void
.end method

.method public toggle()V
    .registers 2

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/nuance/swype/widget/ImageCompoundButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_7
    invoke-virtual {p0, v0}, Lcom/nuance/swype/widget/ImageCompoundButton;->setChecked(Z)V

    .line 55
    return-void

    .line 54
    :cond_b
    const/4 v0, 0x0

    goto :goto_7
.end method
