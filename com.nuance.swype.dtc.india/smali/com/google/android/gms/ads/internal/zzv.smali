.class public final Lcom/google/android/gms/ads/internal/zzv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/internal/zzv$zza;
    }
.end annotation


# instance fields
.field public final zzagf:Landroid/content/Context;

.field zzame:Z

.field final zzaot:Ljava/lang/String;

.field public zzaou:Ljava/lang/String;

.field final zzaov:Lcom/google/android/gms/internal/zzas;

.field public final zzaow:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field zzaox:Lcom/google/android/gms/ads/internal/zzv$zza;

.field public zzaoy:Lcom/google/android/gms/internal/zzkc;

.field public zzaoz:Lcom/google/android/gms/internal/zzkj;

.field public zzapa:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

.field public zzapb:Lcom/google/android/gms/internal/zzju;

.field public zzapc:Lcom/google/android/gms/internal/zzju$zza;

.field public zzapd:Lcom/google/android/gms/internal/zzjv;

.field zzape:Lcom/google/android/gms/ads/internal/client/zzp;

.field zzapf:Lcom/google/android/gms/ads/internal/client/zzq;

.field zzapg:Lcom/google/android/gms/ads/internal/client/zzw;

.field zzaph:Lcom/google/android/gms/ads/internal/client/zzy;

.field zzapi:Lcom/google/android/gms/internal/zzho;

.field zzapj:Lcom/google/android/gms/internal/zzhs;

.field zzapk:Lcom/google/android/gms/internal/zzeb;

.field zzapl:Lcom/google/android/gms/internal/zzec;

.field zzapm:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzed;",
            ">;"
        }
    .end annotation
.end field

.field zzapn:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzee;",
            ">;"
        }
    .end annotation
.end field

.field zzapo:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

.field zzapp:Lcom/google/android/gms/ads/internal/client/VideoOptionsParcel;

.field zzapq:Lcom/google/android/gms/internal/zzdo;

.field zzapr:Lcom/google/android/gms/ads/internal/reward/client/zzd;

.field zzaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field zzapt:Lcom/google/android/gms/ads/internal/purchase/zzk;

.field public zzapu:Lcom/google/android/gms/internal/zzka;

.field zzapv:Landroid/view/View;

.field public zzapw:I

.field zzapx:Z

.field private zzapy:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/zzjv;",
            ">;"
        }
    .end annotation
.end field

.field private zzapz:I

.field private zzaqa:I

.field private zzaqb:Lcom/google/android/gms/internal/zzkr;

.field private zzaqc:Z

.field private zzaqd:Z

.field private zzaqe:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/zzv;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;B)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;B)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/google/android/gms/ads/internal/zzv;->zzapu:Lcom/google/android/gms/internal/zzka;

    iput-object v4, p0, Lcom/google/android/gms/ads/internal/zzv;->zzapv:Landroid/view/View;

    iput v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzapw:I

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzapx:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzame:Z

    iput-object v4, p0, Lcom/google/android/gms/ads/internal/zzv;->zzapy:Ljava/util/HashSet;

    iput v1, p0, Lcom/google/android/gms/ads/internal/zzv;->zzapz:I

    iput v1, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaqa:I

    iput-boolean v2, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaqc:Z

    iput-boolean v2, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaqd:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaqe:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/zzdc;->initialize(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzft()Lcom/google/android/gms/internal/zzjx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzjx;->zzsl()Lcom/google/android/gms/internal/zzde;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/zzdc;->zzjy()Ljava/util/List;

    move-result-object v0

    iget v1, p4, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzcnk:I

    if-eqz v1, :cond_0

    iget v1, p4, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzcnk:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzft()Lcom/google/android/gms/internal/zzjx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzjx;->zzsl()Lcom/google/android/gms/internal/zzde;

    move-result-object v1

    .line 1000
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v1, v1, Lcom/google/android/gms/internal/zzde;->zzbdt:Ljava/util/LinkedHashMap;

    const-string/jumbo v2, "e"

    const-string/jumbo v3, ","

    invoke-static {v3, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 0
    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaot:Ljava/lang/String;

    iget-boolean v0, p2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzaus:Z

    if-nez v0, :cond_2

    iget-boolean v0, p2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzauu:Z

    if-eqz v0, :cond_3

    :cond_2
    iput-object v4, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaox:Lcom/google/android/gms/ads/internal/zzv$zza;

    :goto_0
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzv;->zzapa:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaou:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzv;->zzagf:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaow:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    new-instance v0, Lcom/google/android/gms/internal/zzas;

    new-instance v1, Lcom/google/android/gms/ads/internal/zzi;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/zzi;-><init>(Lcom/google/android/gms/ads/internal/zzv;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzas;-><init>(Lcom/google/android/gms/internal/zzan;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaov:Lcom/google/android/gms/internal/zzas;

    new-instance v0, Lcom/google/android/gms/internal/zzkr;

    const-wide/16 v2, 0xc8

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/zzkr;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaqb:Lcom/google/android/gms/internal/zzkr;

    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzapn:Landroid/support/v4/util/SimpleArrayMap;

    return-void

    :cond_3
    new-instance v0, Lcom/google/android/gms/ads/internal/zzv$zza;

    invoke-direct {v0, p1, p0, p0}, Lcom/google/android/gms/ads/internal/zzv$zza;-><init>(Landroid/content/Context;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaox:Lcom/google/android/gms/ads/internal/zzv$zza;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaox:Lcom/google/android/gms/ads/internal/zzv$zza;

    iget v1, p2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->widthPixels:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzv$zza;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaox:Lcom/google/android/gms/ads/internal/zzv$zza;

    iget v1, p2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->heightPixels:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzv$zza;->setMinimumHeight(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaox:Lcom/google/android/gms/ads/internal/zzv$zza;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzv$zza;->setVisibility(I)V

    goto :goto_0
.end method

.method private zzh(Z)V
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 0
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaox:Lcom/google/android/gms/ads/internal/zzv$zza;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzju;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzju;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzju;->zzbtm:Lcom/google/android/gms/internal/zzlh;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzju;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzju;->zzbtm:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzlh;->zzuj()Lcom/google/android/gms/internal/zzli;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaqb:Lcom/google/android/gms/internal/zzkr;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzkr;->tryAcquire()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzju;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzju;->zzbtm:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzlh;->zzuj()Lcom/google/android/gms/internal/zzli;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzli;->zzho()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x2

    new-array v2, v2, [I

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaox:Lcom/google/android/gms/ads/internal/zzv$zza;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/ads/internal/zzv$zza;->getLocationOnScreen([I)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zziw()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzv;->zzagf:Landroid/content/Context;

    aget v5, v2, v1

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzb(Landroid/content/Context;I)I

    move-result v3

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zziw()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/zzv;->zzagf:Landroid/content/Context;

    aget v2, v2, v0

    invoke-virtual {v4, v5, v2}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzb(Landroid/content/Context;I)I

    move-result v2

    iget v4, p0, Lcom/google/android/gms/ads/internal/zzv;->zzapz:I

    if-ne v3, v4, :cond_3

    iget v4, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaqa:I

    if-eq v2, v4, :cond_5

    :cond_3
    iput v3, p0, Lcom/google/android/gms/ads/internal/zzv;->zzapz:I

    iput v2, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaqa:I

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzju;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzju;->zzbtm:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzlh;->zzuj()Lcom/google/android/gms/internal/zzli;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/ads/internal/zzv;->zzapz:I

    iget v4, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaqa:I

    if-nez p1, :cond_7

    .line 2000
    :goto_1
    iget-object v5, v2, Lcom/google/android/gms/internal/zzli;->zzcor:Lcom/google/android/gms/internal/zzhe;

    invoke-virtual {v5, v3, v4}, Lcom/google/android/gms/internal/zzhe;->zze(II)V

    iget-object v5, v2, Lcom/google/android/gms/internal/zzli;->zzbiu:Lcom/google/android/gms/internal/zzha;

    if-eqz v5, :cond_5

    iget-object v2, v2, Lcom/google/android/gms/internal/zzli;->zzbiu:Lcom/google/android/gms/internal/zzha;

    .line 3000
    iget-object v5, v2, Lcom/google/android/gms/internal/zzha;->zzail:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iput v3, v2, Lcom/google/android/gms/internal/zzha;->zzbqh:I

    iput v4, v2, Lcom/google/android/gms/internal/zzha;->zzbqi:I

    iget-object v3, v2, Lcom/google/android/gms/internal/zzha;->zzbqo:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzha;->zzmv()[I

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v3, v2, Lcom/google/android/gms/internal/zzha;->zzbqo:Landroid/widget/PopupWindow;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zziw()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v4

    iget-object v6, v2, Lcom/google/android/gms/internal/zzha;->zzbpu:Landroid/app/Activity;

    const/4 v7, 0x0

    aget v7, v0, v7

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/ads/internal/util/client/zza;->zza(Landroid/content/Context;I)I

    move-result v4

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zziw()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v6

    iget-object v7, v2, Lcom/google/android/gms/internal/zzha;->zzbpu:Landroid/app/Activity;

    const/4 v8, 0x1

    aget v8, v0, v8

    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/ads/internal/util/client/zza;->zza(Landroid/content/Context;I)I

    move-result v6

    iget-object v7, v2, Lcom/google/android/gms/internal/zzha;->zzbqo:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v7

    iget-object v8, v2, Lcom/google/android/gms/internal/zzha;->zzbqo:Landroid/widget/PopupWindow;

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v8

    invoke-virtual {v3, v4, v6, v7, v8}, Landroid/widget/PopupWindow;->update(IIII)V

    const/4 v3, 0x0

    aget v3, v0, v3

    const/4 v4, 0x1

    aget v0, v0, v4

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/zzha;->zzc(II)V

    :cond_4
    :goto_2
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4000
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaox:Lcom/google/android/gms/ads/internal/zzv$zza;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaox:Lcom/google/android/gms/ads/internal/zzv$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzv$zza;->getRootView()Landroid/view/View;

    move-result-object v0

    const v2, 0x1020002

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaox:Lcom/google/android/gms/ads/internal/zzv$zza;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/ads/internal/zzv$zza;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {v0, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget v0, v2, Landroid/graphics/Rect;->top:I

    iget v4, v3, Landroid/graphics/Rect;->top:I

    if-eq v0, v4, :cond_6

    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaqc:Z

    :cond_6
    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    if-eq v0, v2, :cond_0

    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaqd:Z

    goto/16 :goto_0

    :cond_7
    move v0, v1

    .line 0
    goto/16 :goto_1

    .line 3000
    :cond_8
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzha;->zzs(Z)V

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final destroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzv;->zzgr()V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/zzv;->zzapf:Lcom/google/android/gms/ads/internal/client/zzq;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/zzv;->zzapg:Lcom/google/android/gms/ads/internal/client/zzw;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/zzv;->zzapj:Lcom/google/android/gms/internal/zzhs;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/zzv;->zzapi:Lcom/google/android/gms/internal/zzho;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/zzv;->zzapq:Lcom/google/android/gms/internal/zzdo;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaph:Lcom/google/android/gms/ads/internal/client/zzy;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/zzv;->zzi(Z)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaox:Lcom/google/android/gms/ads/internal/zzv$zza;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaox:Lcom/google/android/gms/ads/internal/zzv$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzv$zza;->removeAllViews()V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzv;->zzgm()V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzv;->zzgo()V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzju;

    return-void
.end method

.method public final onGlobalLayout()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/zzv;->zzh(Z)V

    return-void
.end method

.method public final onScrollChanged()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/zzv;->zzh(Z)V

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaqe:Z

    return-void
.end method

.method public final zza(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/zzjv;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzv;->zzapy:Ljava/util/HashSet;

    return-void
.end method

.method public final zzgl()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/zzjv;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzapy:Ljava/util/HashSet;

    return-object v0
.end method

.method public final zzgm()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzju;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzju;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzju;->zzbtm:Lcom/google/android/gms/internal/zzlh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzju;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzju;->zzbtm:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzlh;->destroy()V

    :cond_0
    return-void
.end method

.method public final zzgn()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzju;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzju;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzju;->zzbtm:Lcom/google/android/gms/internal/zzlh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzju;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzju;->zzbtm:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzlh;->stopLoading()V

    :cond_0
    return-void
.end method

.method public final zzgo()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzju;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzju;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzju;->zzboo:Lcom/google/android/gms/internal/zzgk;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzju;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzju;->zzboo:Lcom/google/android/gms/internal/zzgk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgk;->destroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v0, "Could not destroy mediation adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final zzgp()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzapw:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zzgq()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/ads/internal/zzv;->zzapw:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zzgr()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaox:Lcom/google/android/gms/ads/internal/zzv$zza;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaox:Lcom/google/android/gms/ads/internal/zzv$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzv$zza;->zzgr()V

    :cond_0
    return-void
.end method

.method public final zzgt()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaqc:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaqd:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaqc:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaqe:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "top-scrollable"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "top-locked"

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaqd:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaqe:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "bottom-scrollable"

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "bottom-locked"

    goto :goto_0

    :cond_4
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public final zzgu()V
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzju;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzapd:Lcom/google/android/gms/internal/zzjv;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzju;

    iget-wide v2, v1, Lcom/google/android/gms/internal/zzju;->zzcik:J

    .line 5000
    iget-object v1, v0, Lcom/google/android/gms/internal/zzjv;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-wide v2, v0, Lcom/google/android/gms/internal/zzjv;->zzciz:J

    iget-wide v2, v0, Lcom/google/android/gms/internal/zzjv;->zzciz:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzjv;->zzaob:Lcom/google/android/gms/internal/zzjx;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzjx;->zza(Lcom/google/android/gms/internal/zzjv;)V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzapd:Lcom/google/android/gms/internal/zzjv;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzju;

    iget-wide v2, v1, Lcom/google/android/gms/internal/zzju;->zzcil:J

    .line 6000
    iget-object v1, v0, Lcom/google/android/gms/internal/zzjv;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-wide v4, v0, Lcom/google/android/gms/internal/zzjv;->zzciz:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    iput-wide v2, v0, Lcom/google/android/gms/internal/zzjv;->zzciu:J

    iget-object v2, v0, Lcom/google/android/gms/internal/zzjv;->zzaob:Lcom/google/android/gms/internal/zzjx;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzjx;->zza(Lcom/google/android/gms/internal/zzjv;)V

    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzapd:Lcom/google/android/gms/internal/zzjv;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzju;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/zzju;->zzcby:Z

    .line 7000
    iget-object v2, v0, Lcom/google/android/gms/internal/zzjv;->zzail:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2
    iget-wide v4, v0, Lcom/google/android/gms/internal/zzjv;->zzciz:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_2

    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzjv;->zzcfa:Z

    iget-object v1, v0, Lcom/google/android/gms/internal/zzjv;->zzaob:Lcom/google/android/gms/internal/zzjx;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzjx;->zza(Lcom/google/android/gms/internal/zzjv;)V

    :cond_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 0
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzapd:Lcom/google/android/gms/internal/zzjv;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzv;->zzapa:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzaus:Z

    .line 8000
    iget-object v2, v0, Lcom/google/android/gms/internal/zzjv;->zzail:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-wide v4, v0, Lcom/google/android/gms/internal/zzjv;->zzciz:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/google/android/gms/internal/zzjv;->zzciw:J

    if-nez v1, :cond_4

    iget-wide v4, v0, Lcom/google/android/gms/internal/zzjv;->zzciw:J

    iput-wide v4, v0, Lcom/google/android/gms/internal/zzjv;->zzciv:J

    iget-object v1, v0, Lcom/google/android/gms/internal/zzjv;->zzaob:Lcom/google/android/gms/internal/zzjx;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzjx;->zza(Lcom/google/android/gms/internal/zzjv;)V

    :cond_4
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    return-void

    .line 5000
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 6000
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 7000
    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 8000
    :catchall_3
    move-exception v0

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0
.end method

.method public final zzi(Z)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzapw:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzv;->zzgn()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaoy:Lcom/google/android/gms/internal/zzkc;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaoy:Lcom/google/android/gms/internal/zzkc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkc;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaoz:Lcom/google/android/gms/internal/zzkj;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaoz:Lcom/google/android/gms/internal/zzkj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzkj;->cancel()V

    :cond_2
    if-eqz p1, :cond_3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzju;

    :cond_3
    return-void
.end method
