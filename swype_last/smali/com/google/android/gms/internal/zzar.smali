.class public Lcom/google/android/gms/internal/zzar;
.super Lcom/google/android/gms/internal/zzaq;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/google/android/gms/internal/zzar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzar;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzaq;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static zza(Ljava/lang/String;Landroid/content/Context;Z)Lcom/google/android/gms/internal/zzar;
    .registers 4

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzar;->zza(Landroid/content/Context;Z)V

    new-instance v0, Lcom/google/android/gms/internal/zzar;

    invoke-direct {v0, p1, p0, p2}, Lcom/google/android/gms/internal/zzar;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    return-object v0
.end method


# virtual methods
.method protected final zzb(Lcom/google/android/gms/internal/zzax;Lcom/google/android/gms/internal/zzae$zza;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzax;",
            "Lcom/google/android/gms/internal/zzae$zza;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 0
    .line 1000
    iget-object v0, p1, Lcom/google/android/gms/internal/zzax;->zzagg:Ljava/util/concurrent/ExecutorService;

    .line 0
    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzar;->zzafn:Z

    if-nez v0, :cond_d

    :cond_8
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/zzaq;->zzb(Lcom/google/android/gms/internal/zzax;Lcom/google/android/gms/internal/zzae$zza;)Ljava/util/List;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzax;->zzat()I

    move-result v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/zzaq;->zzb(Lcom/google/android/gms/internal/zzax;Lcom/google/android/gms/internal/zzae$zza;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Lcom/google/android/gms/internal/zzbh;

    .line 2000
    const-string/jumbo v2, "lLpTIaE60qRmDJilKTnB6dMslmEDCMG+aJ7xPwxeE01HtxatTPhAFeGxL2EFpKqq"

    .line 3000
    const-string/jumbo v3, "LwAyv7R7EEW6/T7p6KlsghmfaITLnkCV2ffewHyZJ4E="

    move-object v1, p1

    move-object v4, p2

    .line 0
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbh;-><init>(Lcom/google/android/gms/internal/zzax;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzae$zza;I)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v6

    goto :goto_c
.end method
