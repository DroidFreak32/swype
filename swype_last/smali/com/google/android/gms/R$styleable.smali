.class public final Lcom/google/android/gms/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final AdsAttrs:[I

.field public static final AdsAttrs_adSize:I = 0x0

.field public static final AdsAttrs_adSizes:I = 0x1

.field public static final AdsAttrs_adUnitId:I = 0x2

.field public static final LoadingImageView:[I

.field public static final LoadingImageView_circleCrop:I = 0x2

.field public static final LoadingImageView_imageAspectRatio:I = 0x1

.field public static final LoadingImageView_imageAspectRatioAdjust:I = 0x0

.field public static final SignInButton:[I

.field public static final SignInButton_buttonSize:I = 0x0

.field public static final SignInButton_colorScheme:I = 0x1

.field public static final SignInButton_scopeUris:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x3

    .line 150
    new-array v0, v1, [I

    fill-array-data v0, :array_18

    sput-object v0, Lcom/google/android/gms/R$styleable;->AdsAttrs:[I

    .line 154
    new-array v0, v1, [I

    fill-array-data v0, :array_22

    sput-object v0, Lcom/google/android/gms/R$styleable;->LoadingImageView:[I

    .line 158
    new-array v0, v1, [I

    fill-array-data v0, :array_2c

    sput-object v0, Lcom/google/android/gms/R$styleable;->SignInButton:[I

    return-void

    .line 150
    nop

    :array_18
    .array-data 4
        0x7f01004c
        0x7f01004d
        0x7f01004e
    .end array-data

    .line 154
    :array_22
    .array-data 4
        0x7f010163
        0x7f010164
        0x7f010165
    .end array-data

    .line 158
    :array_2c
    .array-data 4
        0x7f01018c
        0x7f01018d
        0x7f01018e
    .end array-data
.end method
