.class public final Lcom/google/android/gms/ads/internal/client/zzk;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# instance fields
.field private final zzaln:Ljava/lang/String;

.field private final zzauy:[Lcom/google/android/gms/ads/AdSize;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/R$styleable;->AdsAttrs:[I

    invoke-virtual {v0, p2, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    sget v0, Lcom/google/android/gms/R$styleable;->AdsAttrs_adSize:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v0, Lcom/google/android/gms/R$styleable;->AdsAttrs_adSizes:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4b

    move v0, v1

    :goto_22
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4d

    :goto_28
    if-eqz v0, :cond_4f

    if-nez v1, :cond_4f

    invoke-static {v4}, Lcom/google/android/gms/ads/internal/client/zzk;->zzae(Ljava/lang/String;)[Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzk;->zzauy:[Lcom/google/android/gms/ads/AdSize;

    :goto_32
    sget v0, Lcom/google/android/gms/R$styleable;->AdsAttrs_adUnitId:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzk;->zzaln:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzk;->zzaln:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required XML attribute \"adUnitId\" was missing."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4b
    move v0, v2

    goto :goto_22

    :cond_4d
    move v1, v2

    goto :goto_28

    :cond_4f
    if-nez v0, :cond_5a

    if-eqz v1, :cond_5a

    invoke-static {v5}, Lcom/google/android/gms/ads/internal/client/zzk;->zzae(Ljava/lang/String;)[Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzk;->zzauy:[Lcom/google/android/gms/ads/AdSize;

    goto :goto_32

    :cond_5a
    if-eqz v0, :cond_65

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Either XML attribute \"adSize\" or XML attribute \"supportedAdSizes\" should be specified, but not both."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required XML attribute \"adSize\" was missing."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6e
    return-void
.end method

.method private static zzae(Ljava/lang/String;)[Lcom/google/android/gms/ads/AdSize;
    .registers 11

    const/4 v9, 0x1

    const/4 v1, 0x0

    const-string/jumbo v0, "\\s*,\\s*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v0, v4

    new-array v5, v0, [Lcom/google/android/gms/ads/AdSize;

    move v0, v1

    :goto_d
    array-length v2, v4

    if-ge v0, v2, :cond_11a

    aget-object v2, v4, v0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v2, "^(\\d+|FULL_WIDTH)\\s*[xX]\\s*(\\d+|AUTO_HEIGHT)$"

    invoke-virtual {v6, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8a

    const-string/jumbo v2, "[xX]"

    invoke-virtual {v6, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v2, v7, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    aget-object v2, v7, v9

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v9

    :try_start_36
    const-string/jumbo v2, "FULL_WIDTH"

    const/4 v3, 0x0

    aget-object v3, v7, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    const/4 v2, -0x1

    move v3, v2

    :goto_44
    const-string/jumbo v2, "AUTO_HEIGHT"

    const/4 v8, 0x1

    aget-object v8, v7, v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4d
    .catch Ljava/lang/NumberFormatException; {:try_start_36 .. :try_end_4d} :catch_6c

    move-result v2

    if-eqz v2, :cond_64

    const/4 v2, -0x2

    :goto_51
    new-instance v6, Lcom/google/android/gms/ads/AdSize;

    invoke-direct {v6, v3, v2}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    aput-object v6, v5, v0

    :goto_58
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_5b
    const/4 v2, 0x0

    :try_start_5c
    aget-object v2, v7, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move v3, v2

    goto :goto_44

    :cond_64
    const/4 v2, 0x1

    aget-object v2, v7, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_6a
    .catch Ljava/lang/NumberFormatException; {:try_start_5c .. :try_end_6a} :catch_6c

    move-result v2

    goto :goto_51

    :catch_6c
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Could not parse XML attribute \"adSize\": "

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_84

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_80
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_84
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_80

    :cond_8a
    const-string/jumbo v2, "BANNER"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_98

    sget-object v2, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    aput-object v2, v5, v0

    goto :goto_58

    :cond_98
    const-string/jumbo v2, "LARGE_BANNER"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a6

    sget-object v2, Lcom/google/android/gms/ads/AdSize;->LARGE_BANNER:Lcom/google/android/gms/ads/AdSize;

    aput-object v2, v5, v0

    goto :goto_58

    :cond_a6
    const-string/jumbo v2, "FULL_BANNER"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b4

    sget-object v2, Lcom/google/android/gms/ads/AdSize;->FULL_BANNER:Lcom/google/android/gms/ads/AdSize;

    aput-object v2, v5, v0

    goto :goto_58

    :cond_b4
    const-string/jumbo v2, "LEADERBOARD"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c2

    sget-object v2, Lcom/google/android/gms/ads/AdSize;->LEADERBOARD:Lcom/google/android/gms/ads/AdSize;

    aput-object v2, v5, v0

    goto :goto_58

    :cond_c2
    const-string/jumbo v2, "MEDIUM_RECTANGLE"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d0

    sget-object v2, Lcom/google/android/gms/ads/AdSize;->MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;

    aput-object v2, v5, v0

    goto :goto_58

    :cond_d0
    const-string/jumbo v2, "SMART_BANNER"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_df

    sget-object v2, Lcom/google/android/gms/ads/AdSize;->SMART_BANNER:Lcom/google/android/gms/ads/AdSize;

    aput-object v2, v5, v0

    goto/16 :goto_58

    :cond_df
    const-string/jumbo v2, "WIDE_SKYSCRAPER"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ee

    sget-object v2, Lcom/google/android/gms/ads/AdSize;->WIDE_SKYSCRAPER:Lcom/google/android/gms/ads/AdSize;

    aput-object v2, v5, v0

    goto/16 :goto_58

    :cond_ee
    const-string/jumbo v2, "FLUID"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fd

    sget-object v2, Lcom/google/android/gms/ads/AdSize;->FLUID:Lcom/google/android/gms/ads/AdSize;

    aput-object v2, v5, v0

    goto/16 :goto_58

    :cond_fd
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Could not parse XML attribute \"adSize\": "

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_114

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_110
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_114
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_110

    :cond_11a
    array-length v0, v5

    if-nez v0, :cond_13a

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Could not parse XML attribute \"adSize\": "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_134

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_130
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_134
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_130

    :cond_13a
    return-object v5
.end method


# virtual methods
.method public final getAdUnitId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzk;->zzaln:Ljava/lang/String;

    return-object v0
.end method

.method public final zzl(Z)[Lcom/google/android/gms/ads/AdSize;
    .registers 4

    if-nez p1, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzk;->zzauy:[Lcom/google/android/gms/ads/AdSize;

    array-length v0, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_11

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The adSizes XML attribute is only allowed on PublisherAdViews."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzk;->zzauy:[Lcom/google/android/gms/ads/AdSize;

    return-object v0
.end method
