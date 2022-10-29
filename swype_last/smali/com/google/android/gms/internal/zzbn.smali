.class public final Lcom/google/android/gms/internal/zzbn;
.super Lcom/google/android/gms/internal/zzbp;


# static fields
.field private static final zzafc:Ljava/lang/Object;

.field private static volatile zzahe:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/zzbn;->zzahe:Ljava/lang/Long;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbn;->zzafc:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzax;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzae$zza;I)V
    .registers 13

    const/16 v6, 0x21

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

    sget-object v0, Lcom/google/android/gms/internal/zzbn;->zzahe:Ljava/lang/Long;

    if-nez v0, :cond_1a

    sget-object v1, Lcom/google/android/gms/internal/zzbn;->zzafc:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/google/android/gms/internal/zzbn;->zzahe:Ljava/lang/Long;

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbn;->zzahh:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    sput-object v0, Lcom/google/android/gms/internal/zzbn;->zzahe:Ljava/lang/Long;

    :cond_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_25

    :cond_1a
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbn;->zzaha:Lcom/google/android/gms/internal/zzae$zza;

    monitor-enter v1

    :try_start_1d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbn;->zzaha:Lcom/google/android/gms/internal/zzae$zza;

    sget-object v2, Lcom/google/android/gms/internal/zzbn;->zzahe:Ljava/lang/Long;

    iput-object v2, v0, Lcom/google/android/gms/internal/zzae$zza;->zzds:Ljava/lang/Long;

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_28

    return-void

    :catchall_25
    move-exception v0

    :try_start_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v0

    :catchall_28
    move-exception v0

    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v0
.end method
