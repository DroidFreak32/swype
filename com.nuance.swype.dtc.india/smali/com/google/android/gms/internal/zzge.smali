.class public final Lcom/google/android/gms/internal/zzge;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzge$zza;
    }
.end annotation


# instance fields
.field public final zzbom:I

.field public final zzbon:Lcom/google/android/gms/internal/zzfz;

.field public final zzboo:Lcom/google/android/gms/internal/zzgk;

.field public final zzbop:Ljava/lang/String;

.field public final zzboq:Lcom/google/android/gms/internal/zzgc;

.field public final zzbor:Lcom/google/android/gms/internal/zzgm;

.field public final zzbos:J


# direct methods
.method public constructor <init>(I)V
    .locals 10

    const/4 v2, 0x0

    const-wide/16 v8, 0x0

    move-object v1, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move v6, p1

    move-object v7, v2

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/zzge;-><init>(Lcom/google/android/gms/internal/zzfz;Lcom/google/android/gms/internal/zzgk;Ljava/lang/String;Lcom/google/android/gms/internal/zzgc;ILcom/google/android/gms/internal/zzgm;J)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzfz;Lcom/google/android/gms/internal/zzgk;Ljava/lang/String;Lcom/google/android/gms/internal/zzgc;ILcom/google/android/gms/internal/zzgm;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzge;->zzbon:Lcom/google/android/gms/internal/zzfz;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzge;->zzboo:Lcom/google/android/gms/internal/zzgk;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzge;->zzbop:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzge;->zzboq:Lcom/google/android/gms/internal/zzgc;

    iput p5, p0, Lcom/google/android/gms/internal/zzge;->zzbom:I

    iput-object p6, p0, Lcom/google/android/gms/internal/zzge;->zzbor:Lcom/google/android/gms/internal/zzgm;

    iput-wide p7, p0, Lcom/google/android/gms/internal/zzge;->zzbos:J

    return-void
.end method
