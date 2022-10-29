.class public final Lcom/google/android/gms/internal/zzbl;
.super Lcom/google/android/gms/internal/zzbp;


# static fields
.field private static final zzafc:Ljava/lang/Object;

.field private static volatile zzct:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/zzbl;->zzct:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbl;->zzafc:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzax;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzae$zza;I)V
    .registers 13

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzbp;-><init>(Lcom/google/android/gms/internal/zzax;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzae$zza;II)V

    return-void
.end method


# virtual methods
.method protected final zzcu()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbl;->zzaha:Lcom/google/android/gms/internal/zzae$zza;

    const-string/jumbo v1, "E"

    iput-object v1, v0, Lcom/google/android/gms/internal/zzae$zza;->zzct:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzbl;->zzct:Ljava/lang/String;

    if-nez v0, :cond_21

    sget-object v1, Lcom/google/android/gms/internal/zzbl;->zzafc:Ljava/lang/Object;

    monitor-enter v1

    :try_start_e
    sget-object v0, Lcom/google/android/gms/internal/zzbl;->zzct:Ljava/lang/String;

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbl;->zzahh:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/zzbl;->zzct:Ljava/lang/String;

    :cond_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_e .. :try_end_21} :catchall_2c

    :cond_21
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbl;->zzaha:Lcom/google/android/gms/internal/zzae$zza;

    monitor-enter v1

    :try_start_24
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbl;->zzaha:Lcom/google/android/gms/internal/zzae$zza;

    sget-object v2, Lcom/google/android/gms/internal/zzbl;->zzct:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/internal/zzae$zza;->zzct:Ljava/lang/String;

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_2f

    return-void

    :catchall_2c
    move-exception v0

    :try_start_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v0

    :catchall_2f
    move-exception v0

    :try_start_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v0
.end method
