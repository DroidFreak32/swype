.class public final Lcom/google/android/gms/internal/zzvv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$Optional;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzvv$zza;
    }
.end annotation


# static fields
.field public static final atR:Lcom/google/android/gms/internal/zzvv;


# instance fields
.field public final atS:Z

.field public final atT:Z

.field public final atU:Ljava/lang/Long;

.field public final atV:Ljava/lang/Long;

.field public final dO:Z

.field public final dQ:Z

.field public final dR:Ljava/lang/String;

.field public final dS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 0
    new-instance v0, Lcom/google/android/gms/internal/zzvv$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzvv$zza;-><init>()V

    .line 1000
    new-instance v0, Lcom/google/android/gms/internal/zzvv;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzvv;-><init>(B)V

    .line 0
    sput-object v0, Lcom/google/android/gms/internal/zzvv;->atR:Lcom/google/android/gms/internal/zzvv;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzvv;->atS:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzvv;->dO:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/zzvv;->dR:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzvv;->dQ:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzvv;->atT:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/zzvv;->dS:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzvv;->atU:Ljava/lang/Long;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzvv;->atV:Ljava/lang/Long;

    return-void
.end method

.method private synthetic constructor <init>(B)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzvv;-><init>()V

    return-void
.end method
