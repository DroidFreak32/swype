.class public final Lcom/google/android/gms/internal/zzha;
.super Lcom/google/android/gms/internal/zzhf;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# static fields
.field static final zzbqe:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field zzaie:I

.field zzaif:I

.field public final zzail:Ljava/lang/Object;

.field zzani:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

.field final zzbgf:Lcom/google/android/gms/internal/zzlh;

.field public final zzbpu:Landroid/app/Activity;

.field zzbqf:Ljava/lang/String;

.field zzbqg:Z

.field public zzbqh:I

.field public zzbqi:I

.field zzbqj:I

.field zzbqk:I

.field zzbql:Landroid/widget/ImageView;

.field zzbqm:Landroid/widget/LinearLayout;

.field zzbqn:Lcom/google/android/gms/internal/zzhg;

.field public zzbqo:Landroid/widget/PopupWindow;

.field zzbqp:Landroid/widget/RelativeLayout;

.field zzbqq:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 0
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "top-left"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "top-right"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "top-center"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "center"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "bottom-left"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "bottom-right"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "bottom-center"

    aput-object v2, v0, v1

    .line 3000
    new-instance v1, Lcom/google/android/gms/common/util/zza;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/common/util/zza;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 0
    sput-object v0, Lcom/google/android/gms/internal/zzha;->zzbqe:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzlh;Lcom/google/android/gms/internal/zzhg;)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    const-string/jumbo v0, "resize"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzhf;-><init>(Lcom/google/android/gms/internal/zzlh;Ljava/lang/String;)V

    const-string/jumbo v0, "top-right"

    iput-object v0, p0, Lcom/google/android/gms/internal/zzha;->zzbqf:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzha;->zzbqg:Z

    iput v1, p0, Lcom/google/android/gms/internal/zzha;->zzbqh:I

    iput v1, p0, Lcom/google/android/gms/internal/zzha;->zzbqi:I

    iput v2, p0, Lcom/google/android/gms/internal/zzha;->zzaif:I

    iput v1, p0, Lcom/google/android/gms/internal/zzha;->zzbqj:I

    iput v1, p0, Lcom/google/android/gms/internal/zzha;->zzbqk:I

    iput v2, p0, Lcom/google/android/gms/internal/zzha;->zzaie:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzha;->zzail:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzha;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzlh;->zzue()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzha;->zzbpu:Landroid/app/Activity;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzha;->zzbqn:Lcom/google/android/gms/internal/zzhg;

    return-void
.end method


# virtual methods
.method public final zzc(II)V
    .locals 5

    .prologue
    .line 0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzha;->zzbpu:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzk(Landroid/app/Activity;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    sub-int v0, p2, v0

    iget v1, p0, Lcom/google/android/gms/internal/zzha;->zzaie:I

    iget v2, p0, Lcom/google/android/gms/internal/zzha;->zzaif:I

    .line 2000
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "y"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v3, "width"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "height"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhf;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    const-string/jumbo v2, "onSizeChanged"

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/zzlh;->zzb(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Error occured while dispatching size change."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkd;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final zzmv()[I
    .locals 8

    .prologue
    const/16 v7, 0x32

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 0
    .line 1000
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzha;->zzbpu:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzi(Landroid/app/Activity;)[I

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzha;->zzbpu:Landroid/app/Activity;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzkh;->zzk(Landroid/app/Activity;)[I

    move-result-object v5

    aget v6, v0, v1

    aget v0, v0, v4

    iget v2, p0, Lcom/google/android/gms/internal/zzha;->zzaie:I

    if-lt v2, v7, :cond_0

    iget v2, p0, Lcom/google/android/gms/internal/zzha;->zzaie:I

    if-le v2, v6, :cond_1

    :cond_0
    const-string/jumbo v0, "Width is too small or too large."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    move v0, v1

    .line 0
    :goto_0
    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 1000
    :cond_1
    iget v2, p0, Lcom/google/android/gms/internal/zzha;->zzaif:I

    if-lt v2, v7, :cond_2

    iget v2, p0, Lcom/google/android/gms/internal/zzha;->zzaif:I

    if-le v2, v0, :cond_3

    :cond_2
    const-string/jumbo v0, "Height is too small or too large."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/google/android/gms/internal/zzha;->zzaif:I

    if-ne v2, v0, :cond_4

    iget v0, p0, Lcom/google/android/gms/internal/zzha;->zzaie:I

    if-ne v0, v6, :cond_4

    const-string/jumbo v0, "Cannot resize to a full-screen ad."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzha;->zzbqg:Z

    if-eqz v0, :cond_7

    iget-object v2, p0, Lcom/google/android/gms/internal/zzha;->zzbqf:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_5
    :goto_2
    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lcom/google/android/gms/internal/zzha;->zzbqh:I

    iget v2, p0, Lcom/google/android/gms/internal/zzha;->zzbqj:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/google/android/gms/internal/zzha;->zzaie:I

    add-int/2addr v0, v2

    add-int/lit8 v2, v0, -0x32

    iget v0, p0, Lcom/google/android/gms/internal/zzha;->zzbqi:I

    iget v7, p0, Lcom/google/android/gms/internal/zzha;->zzbqk:I

    add-int/2addr v0, v7

    :goto_3
    if-ltz v2, :cond_6

    add-int/lit8 v2, v2, 0x32

    if-gt v2, v6, :cond_6

    aget v2, v5, v1

    if-lt v0, v2, :cond_6

    add-int/lit8 v0, v0, 0x32

    aget v2, v5, v4

    if-le v0, v2, :cond_7

    :cond_6
    move v0, v1

    goto :goto_0

    :sswitch_0
    const-string/jumbo v7, "top-left"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_2

    :sswitch_1
    const-string/jumbo v7, "top-center"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v0, v4

    goto :goto_2

    :sswitch_2
    const-string/jumbo v7, "center"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v0, v3

    goto :goto_2

    :sswitch_3
    const-string/jumbo v7, "bottom-left"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v0, 0x3

    goto :goto_2

    :sswitch_4
    const-string/jumbo v7, "bottom-center"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v0, 0x4

    goto :goto_2

    :sswitch_5
    const-string/jumbo v7, "bottom-right"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v0, 0x5

    goto :goto_2

    :pswitch_0
    iget v0, p0, Lcom/google/android/gms/internal/zzha;->zzbqh:I

    iget v2, p0, Lcom/google/android/gms/internal/zzha;->zzbqj:I

    add-int/2addr v2, v0

    iget v0, p0, Lcom/google/android/gms/internal/zzha;->zzbqi:I

    iget v7, p0, Lcom/google/android/gms/internal/zzha;->zzbqk:I

    add-int/2addr v0, v7

    goto :goto_3

    :pswitch_1
    iget v0, p0, Lcom/google/android/gms/internal/zzha;->zzbqh:I

    iget v2, p0, Lcom/google/android/gms/internal/zzha;->zzbqj:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/google/android/gms/internal/zzha;->zzaie:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    add-int/lit8 v2, v0, -0x19

    iget v0, p0, Lcom/google/android/gms/internal/zzha;->zzbqi:I

    iget v7, p0, Lcom/google/android/gms/internal/zzha;->zzbqk:I

    add-int/2addr v0, v7

    goto :goto_3

    :pswitch_2
    iget v0, p0, Lcom/google/android/gms/internal/zzha;->zzbqh:I

    iget v2, p0, Lcom/google/android/gms/internal/zzha;->zzbqj:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/google/android/gms/internal/zzha;->zzaie:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    add-int/lit8 v2, v0, -0x19

    iget v0, p0, Lcom/google/android/gms/internal/zzha;->zzbqi:I

    iget v7, p0, Lcom/google/android/gms/internal/zzha;->zzbqk:I

    add-int/2addr v0, v7

    iget v7, p0, Lcom/google/android/gms/internal/zzha;->zzaif:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v0, v7

    add-int/lit8 v0, v0, -0x19

    goto/16 :goto_3

    :pswitch_3
    iget v0, p0, Lcom/google/android/gms/internal/zzha;->zzbqh:I

    iget v2, p0, Lcom/google/android/gms/internal/zzha;->zzbqj:I

    add-int/2addr v2, v0

    iget v0, p0, Lcom/google/android/gms/internal/zzha;->zzbqi:I

    iget v7, p0, Lcom/google/android/gms/internal/zzha;->zzbqk:I

    add-int/2addr v0, v7

    iget v7, p0, Lcom/google/android/gms/internal/zzha;->zzaif:I

    add-int/2addr v0, v7

    add-int/lit8 v0, v0, -0x32

    goto/16 :goto_3

    :pswitch_4
    iget v0, p0, Lcom/google/android/gms/internal/zzha;->zzbqh:I

    iget v2, p0, Lcom/google/android/gms/internal/zzha;->zzbqj:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/google/android/gms/internal/zzha;->zzaie:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    add-int/lit8 v2, v0, -0x19

    iget v0, p0, Lcom/google/android/gms/internal/zzha;->zzbqi:I

    iget v7, p0, Lcom/google/android/gms/internal/zzha;->zzbqk:I

    add-int/2addr v0, v7

    iget v7, p0, Lcom/google/android/gms/internal/zzha;->zzaif:I

    add-int/2addr v0, v7

    add-int/lit8 v0, v0, -0x32

    goto/16 :goto_3

    :pswitch_5
    iget v0, p0, Lcom/google/android/gms/internal/zzha;->zzbqh:I

    iget v2, p0, Lcom/google/android/gms/internal/zzha;->zzbqj:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/google/android/gms/internal/zzha;->zzaie:I

    add-int/2addr v0, v2

    add-int/lit8 v2, v0, -0x32

    iget v0, p0, Lcom/google/android/gms/internal/zzha;->zzbqi:I

    iget v7, p0, Lcom/google/android/gms/internal/zzha;->zzbqk:I

    add-int/2addr v0, v7

    iget v7, p0, Lcom/google/android/gms/internal/zzha;->zzaif:I

    add-int/2addr v0, v7

    add-int/lit8 v0, v0, -0x32

    goto/16 :goto_3

    :cond_7
    move v0, v4

    goto/16 :goto_0

    .line 0
    :cond_8
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzha;->zzbqg:Z

    if-eqz v0, :cond_9

    new-array v0, v3, [I

    iget v2, p0, Lcom/google/android/gms/internal/zzha;->zzbqh:I

    iget v3, p0, Lcom/google/android/gms/internal/zzha;->zzbqj:I

    add-int/2addr v2, v3

    aput v2, v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/zzha;->zzbqi:I

    iget v2, p0, Lcom/google/android/gms/internal/zzha;->zzbqk:I

    add-int/2addr v1, v2

    aput v1, v0, v4

    goto/16 :goto_1

    :cond_9
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzha;->zzbpu:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzi(Landroid/app/Activity;)[I

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzha;->zzbpu:Landroid/app/Activity;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzkh;->zzk(Landroid/app/Activity;)[I

    move-result-object v5

    aget v6, v0, v1

    iget v0, p0, Lcom/google/android/gms/internal/zzha;->zzbqh:I

    iget v2, p0, Lcom/google/android/gms/internal/zzha;->zzbqj:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/google/android/gms/internal/zzha;->zzbqi:I

    iget v7, p0, Lcom/google/android/gms/internal/zzha;->zzbqk:I

    add-int/2addr v2, v7

    if-gez v0, :cond_c

    move v0, v1

    :cond_a
    :goto_4
    aget v6, v5, v1

    if-ge v2, v6, :cond_d

    aget v2, v5, v1

    :cond_b
    :goto_5
    new-array v3, v3, [I

    aput v0, v3, v1

    aput v2, v3, v4

    move-object v0, v3

    goto/16 :goto_1

    :cond_c
    iget v7, p0, Lcom/google/android/gms/internal/zzha;->zzaie:I

    add-int/2addr v7, v0

    if-le v7, v6, :cond_a

    iget v0, p0, Lcom/google/android/gms/internal/zzha;->zzaie:I

    sub-int v0, v6, v0

    goto :goto_4

    :cond_d
    iget v6, p0, Lcom/google/android/gms/internal/zzha;->zzaif:I

    add-int/2addr v6, v2

    aget v7, v5, v4

    if-le v6, v7, :cond_b

    aget v2, v5, v4

    iget v5, p0, Lcom/google/android/gms/internal/zzha;->zzaif:I

    sub-int/2addr v2, v5

    goto :goto_5

    .line 1000
    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_2
        -0x3c587281 -> :sswitch_0
        -0x27103597 -> :sswitch_3
        0x455fe3fa -> :sswitch_5
        0x4ccee637 -> :sswitch_4
        0x68a23bcd -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final zzmw()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzha;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzha;->zzbqo:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzs(Z)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzha;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzha;->zzbqo:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzha;->zzbqo:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzha;->zzbqp:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzha;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzlh;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzha;->zzbqq:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzha;->zzbqq:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzha;->zzbql:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzha;->zzbqq:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzha;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzlh;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzha;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzha;->zzani:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzlh;->zza(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)V

    :cond_0
    if-eqz p1, :cond_1

    const-string/jumbo v0, "default"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzha;->zzbv(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzha;->zzbqn:Lcom/google/android/gms/internal/zzhg;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzha;->zzbqn:Lcom/google/android/gms/internal/zzhg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzhg;->zzej()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzha;->zzbqo:Landroid/widget/PopupWindow;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzha;->zzbqp:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzha;->zzbqq:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzha;->zzbqm:Landroid/widget/LinearLayout;

    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
