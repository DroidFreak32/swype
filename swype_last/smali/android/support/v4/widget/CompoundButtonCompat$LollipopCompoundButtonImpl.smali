.class Landroid/support/v4/widget/CompoundButtonCompat$LollipopCompoundButtonImpl;
.super Landroid/support/v4/widget/CompoundButtonCompat$BaseCompoundButtonCompat;
.source "CompoundButtonCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/CompoundButtonCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LollipopCompoundButtonImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 84
    invoke-direct {p0}, Landroid/support/v4/widget/CompoundButtonCompat$BaseCompoundButtonCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public final setButtonTintList(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "button"    # Landroid/widget/CompoundButton;
    .param p2, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 87
    .line 1026
    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 88
    return-void
.end method

.method public final setButtonTintMode(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V
    .registers 3
    .param p1, "button"    # Landroid/widget/CompoundButton;
    .param p2, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 97
    .line 1034
    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 98
    return-void
.end method
