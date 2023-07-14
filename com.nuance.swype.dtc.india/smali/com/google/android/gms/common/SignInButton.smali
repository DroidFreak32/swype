.class public final Lcom/google/android/gms/common/SignInButton;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mColor:I

.field private mSize:I

.field private rA:Landroid/view/View$OnClickListener;

.field private ry:[Lcom/google/android/gms/common/api/Scope;

.field private rz:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/SignInButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/common/SignInButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/SignInButton;->rA:Landroid/view/View$OnClickListener;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/SignInButton;->zzb(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iget v0, p0, Lcom/google/android/gms/common/SignInButton;->mSize:I

    iget v1, p0, Lcom/google/android/gms/common/SignInButton;->mColor:I

    iget-object v2, p0, Lcom/google/android/gms/common/SignInButton;->ry:[Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/common/SignInButton;->setStyle(II[Lcom/google/android/gms/common/api/Scope;)V

    return-void
.end method

.method private zzb(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/R$styleable;->SignInButton:[I

    invoke-virtual {v1, p2, v2, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    :try_start_0
    sget v2, Lcom/google/android/gms/R$styleable;->SignInButton_buttonSize:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/common/SignInButton;->mSize:I

    sget v2, Lcom/google/android/gms/R$styleable;->SignInButton_colorScheme:I

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/common/SignInButton;->mColor:I

    sget v2, Lcom/google/android/gms/R$styleable;->SignInButton_scopeUris:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/SignInButton;->ry:[Lcom/google/android/gms/common/api/Scope;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\\s+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    new-array v3, v3, [Lcom/google/android/gms/common/api/Scope;

    iput-object v3, p0, Lcom/google/android/gms/common/SignInButton;->ry:[Lcom/google/android/gms/common/api/Scope;

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/common/SignInButton;->ry:[Lcom/google/android/gms/common/api/Scope;

    new-instance v4, Lcom/google/android/gms/common/api/Scope;

    aget-object v5, v2, v0

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->rA:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->rz:Landroid/view/View;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->rA:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final setColorScheme(I)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/common/SignInButton;->mSize:I

    iget-object v1, p0, Lcom/google/android/gms/common/SignInButton;->ry:[Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/gms/common/SignInButton;->setStyle(II[Lcom/google/android/gms/common/api/Scope;)V

    return-void
.end method

.method public final setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->rz:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public final setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/common/SignInButton;->rA:Landroid/view/View$OnClickListener;

    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->rz:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->rz:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public final setScopes([Lcom/google/android/gms/common/api/Scope;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/common/SignInButton;->mSize:I

    iget v1, p0, Lcom/google/android/gms/common/SignInButton;->mColor:I

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gms/common/SignInButton;->setStyle(II[Lcom/google/android/gms/common/api/Scope;)V

    return-void
.end method

.method public final setSize(I)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/common/SignInButton;->mColor:I

    iget-object v1, p0, Lcom/google/android/gms/common/SignInButton;->ry:[Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/common/SignInButton;->setStyle(II[Lcom/google/android/gms/common/api/Scope;)V

    return-void
.end method

.method public final setStyle(II)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->ry:[Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/common/SignInButton;->setStyle(II[Lcom/google/android/gms/common/api/Scope;)V

    return-void
.end method

.method public final setStyle(II[Lcom/google/android/gms/common/api/Scope;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x42400000    # 48.0f

    const/high16 v7, 0x3f000000    # 0.5f

    .line 0
    iput p1, p0, Lcom/google/android/gms/common/SignInButton;->mSize:I

    iput p2, p0, Lcom/google/android/gms/common/SignInButton;->mColor:I

    iput-object p3, p0, Lcom/google/android/gms/common/SignInButton;->ry:[Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {p0}, Lcom/google/android/gms/common/SignInButton;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1000
    iget-object v1, p0, Lcom/google/android/gms/common/SignInButton;->rz:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/SignInButton;->rz:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/SignInButton;->removeView(Landroid/view/View;)V

    :cond_0
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/common/SignInButton;->mSize:I

    iget v2, p0, Lcom/google/android/gms/common/SignInButton;->mColor:I

    iget-object v3, p0, Lcom/google/android/gms/common/SignInButton;->ry:[Lcom/google/android/gms/common/api/Scope;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/common/internal/zzaf;->zzb(Landroid/content/Context;II[Lcom/google/android/gms/common/api/Scope;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/common/SignInButton;->rz:Landroid/view/View;
    :try_end_0
    .catch Lcom/google/android/gms/dynamic/zzg$zza; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->rz:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/SignInButton;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->rz:Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/android/gms/common/SignInButton;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->rz:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 0
    return-void

    .line 1000
    :catch_0
    move-exception v1

    const-string/jumbo v1, "SignInButton"

    const-string/jumbo v2, "Sign in button not found, using placeholder instead"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/google/android/gms/common/SignInButton;->mSize:I

    iget v2, p0, Lcom/google/android/gms/common/SignInButton;->mColor:I

    iget-object v3, p0, Lcom/google/android/gms/common/SignInButton;->ry:[Lcom/google/android/gms/common/api/Scope;

    .line 2000
    new-instance v4, Lcom/google/android/gms/common/internal/zzag;

    invoke-direct {v4, v0}, Lcom/google/android/gms/common/internal/zzag;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 3000
    invoke-static {v3}, Lcom/google/android/gms/common/internal/zzag;->zza([Lcom/google/android/gms/common/api/Scope;)Z

    move-result v3

    .line 4000
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v4, v0}, Lcom/google/android/gms/common/internal/zzag;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {v4, v0}, Lcom/google/android/gms/common/internal/zzag;->setTextSize(F)V

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v6, v0, v8

    add-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v4, v6}, Lcom/google/android/gms/common/internal/zzag;->setMinHeight(I)V

    mul-float/2addr v0, v8

    add-float/2addr v0, v7

    float-to-int v0, v0

    invoke-virtual {v4, v0}, Lcom/google/android/gms/common/internal/zzag;->setMinWidth(I)V

    .line 5000
    if-eqz v3, :cond_1

    sget v0, Lcom/google/android/gms/R$drawable;->common_plus_signin_btn_icon_dark:I

    sget v6, Lcom/google/android/gms/R$drawable;->common_plus_signin_btn_icon_light:I

    sget v7, Lcom/google/android/gms/R$drawable;->common_plus_signin_btn_icon_dark:I

    invoke-static {v2, v0, v6, v7}, Lcom/google/android/gms/common/internal/zzag;->zzg(IIII)I

    move-result v0

    sget v6, Lcom/google/android/gms/R$drawable;->common_plus_signin_btn_text_dark:I

    sget v7, Lcom/google/android/gms/R$drawable;->common_plus_signin_btn_text_light:I

    sget v8, Lcom/google/android/gms/R$drawable;->common_plus_signin_btn_text_dark:I

    invoke-static {v2, v6, v7, v8}, Lcom/google/android/gms/common/internal/zzag;->zzg(IIII)I

    move-result v6

    invoke-static {v1, v0, v6}, Lcom/google/android/gms/common/internal/zzag;->zzd(III)I

    move-result v0

    :goto_1
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/android/gms/common/internal/zzag;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6000
    if-eqz v3, :cond_2

    sget v0, Lcom/google/android/gms/R$color;->common_plus_signin_btn_text_dark:I

    sget v3, Lcom/google/android/gms/R$color;->common_plus_signin_btn_text_light:I

    sget v6, Lcom/google/android/gms/R$color;->common_plus_signin_btn_text_dark:I

    invoke-static {v2, v0, v3, v6}, Lcom/google/android/gms/common/internal/zzag;->zzg(IIII)I

    move-result v0

    :goto_2
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v0}, Lcom/google/android/gms/common/internal/zzag;->setTextColor(Landroid/content/res/ColorStateList;)V

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Unknown button size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5000
    :cond_1
    sget v0, Lcom/google/android/gms/R$drawable;->common_google_signin_btn_icon_dark:I

    sget v6, Lcom/google/android/gms/R$drawable;->common_google_signin_btn_icon_light:I

    sget v7, Lcom/google/android/gms/R$drawable;->common_google_signin_btn_icon_light:I

    invoke-static {v2, v0, v6, v7}, Lcom/google/android/gms/common/internal/zzag;->zzg(IIII)I

    move-result v0

    sget v6, Lcom/google/android/gms/R$drawable;->common_google_signin_btn_text_dark:I

    sget v7, Lcom/google/android/gms/R$drawable;->common_google_signin_btn_text_light:I

    sget v8, Lcom/google/android/gms/R$drawable;->common_google_signin_btn_text_light:I

    invoke-static {v2, v6, v7, v8}, Lcom/google/android/gms/common/internal/zzag;->zzg(IIII)I

    move-result v6

    invoke-static {v1, v0, v6}, Lcom/google/android/gms/common/internal/zzag;->zzd(III)I

    move-result v0

    goto :goto_1

    .line 6000
    :cond_2
    sget v0, Lcom/google/android/gms/R$color;->common_google_signin_btn_text_dark:I

    sget v3, Lcom/google/android/gms/R$color;->common_google_signin_btn_text_light:I

    sget v6, Lcom/google/android/gms/R$color;->common_google_signin_btn_text_light:I

    invoke-static {v2, v0, v3, v6}, Lcom/google/android/gms/common/internal/zzag;->zzg(IIII)I

    move-result v0

    goto :goto_2

    :pswitch_0
    sget v0, Lcom/google/android/gms/R$string;->common_signin_button_text:I

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/android/gms/common/internal/zzag;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    invoke-virtual {v4, v9}, Lcom/google/android/gms/common/internal/zzag;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1000
    iput-object v4, p0, Lcom/google/android/gms/common/SignInButton;->rz:Landroid/view/View;

    goto/16 :goto_0

    .line 6000
    :pswitch_1
    sget v0, Lcom/google/android/gms/R$string;->common_signin_button_text_long:I

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/android/gms/common/internal/zzag;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :pswitch_2
    invoke-virtual {v4, v9}, Lcom/google/android/gms/common/internal/zzag;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
