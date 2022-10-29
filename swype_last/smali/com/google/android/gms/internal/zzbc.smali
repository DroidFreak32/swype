.class public final Lcom/google/android/gms/internal/zzbc;
.super Lcom/google/android/gms/internal/zzbp;


# static fields
.field private static final zzafc:Ljava/lang/Object;

.field private static volatile zzcr:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/zzbc;->zzcr:Ljava/lang/Long;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbc;->zzafc:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzax;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzae$zza;I)V
    .registers 13

    const/16 v6, 0x23

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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbc;->zzaha:Lcom/google/android/gms/internal/zzae$zza;

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzae$zza;->zzdu:Ljava/lang/Long;

    sget-object v0, Lcom/google/android/gms/internal/zzbc;->zzcr:Ljava/lang/Long;

    if-nez v0, :cond_2d

    sget-object v1, Lcom/google/android/gms/internal/zzbc;->zzafc:Ljava/lang/Object;

    monitor-enter v1

    :try_start_11
    sget-object v0, Lcom/google/android/gms/internal/zzbc;->zzcr:Ljava/lang/Long;

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbc;->zzahh:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbc;->zzaey:Lcom/google/android/gms/internal/zzax;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzax;->getContext()Landroid/content/Context;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    sput-object v0, Lcom/google/android/gms/internal/zzbc;->zzcr:Ljava/lang/Long;

    :cond_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_11 .. :try_end_2d} :catchall_38

    :cond_2d
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbc;->zzaha:Lcom/google/android/gms/internal/zzae$zza;

    monitor-enter v1

    :try_start_30
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbc;->zzaha:Lcom/google/android/gms/internal/zzae$zza;

    sget-object v2, Lcom/google/android/gms/internal/zzbc;->zzcr:Ljava/lang/Long;

    iput-object v2, v0, Lcom/google/android/gms/internal/zzae$zza;->zzdu:Ljava/lang/Long;

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_3b

    return-void

    :catchall_38
    move-exception v0

    :try_start_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v0

    :catchall_3b
    move-exception v0

    :try_start_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v0
.end method
