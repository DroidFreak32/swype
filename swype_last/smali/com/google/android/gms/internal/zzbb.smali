.class public final Lcom/google/android/gms/internal/zzbb;
.super Lcom/google/android/gms/internal/zzbp;


# static fields
.field private static final zzafc:Ljava/lang/Object;

.field private static volatile zzagz:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/zzbb;->zzagz:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbb;->zzafc:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzax;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzae$zza;I)V
    .registers 13

    const/16 v6, 0x1b

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
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbb;->zzaha:Lcom/google/android/gms/internal/zzae$zza;

    const-string/jumbo v1, "E"

    iput-object v1, v0, Lcom/google/android/gms/internal/zzae$zza;->zzdo:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzbb;->zzagz:Ljava/lang/String;

    if-nez v0, :cond_33

    sget-object v1, Lcom/google/android/gms/internal/zzbb;->zzafc:Ljava/lang/Object;

    monitor-enter v1

    :try_start_e
    sget-object v0, Lcom/google/android/gms/internal/zzbb;->zzagz:Ljava/lang/String;

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbb;->zzahh:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbb;->zzaey:Lcom/google/android/gms/internal/zzax;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzax;->getContext()Landroid/content/Context;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzaj;->zza([BZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzbb;->zzagz:Ljava/lang/String;

    :cond_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_e .. :try_end_33} :catchall_3e

    :cond_33
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbb;->zzaha:Lcom/google/android/gms/internal/zzae$zza;

    monitor-enter v1

    :try_start_36
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbb;->zzaha:Lcom/google/android/gms/internal/zzae$zza;

    sget-object v2, Lcom/google/android/gms/internal/zzbb;->zzagz:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/internal/zzae$zza;->zzdo:Ljava/lang/String;

    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_41

    return-void

    :catchall_3e
    move-exception v0

    :try_start_3f
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v0

    :catchall_41
    move-exception v0

    :try_start_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v0
.end method
