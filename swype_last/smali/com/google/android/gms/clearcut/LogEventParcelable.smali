.class public Lcom/google/android/gms/clearcut/LogEventParcelable;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/clearcut/zzd;


# instance fields
.field public qA:Z

.field public final qB:Lcom/google/android/gms/internal/zzapz$zzd;

.field public final qC:Lcom/google/android/gms/clearcut/zzb$zzc;

.field public final qD:Lcom/google/android/gms/clearcut/zzb$zzc;

.field public qu:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

.field public qv:[B

.field public qw:[I

.field public qx:[Ljava/lang/String;

.field public qy:[I

.field public qz:[[B

.field public final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/clearcut/zzd;

    invoke-direct {v0}, Lcom/google/android/gms/clearcut/zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/clearcut/LogEventParcelable;->CREATOR:Lcom/google/android/gms/clearcut/zzd;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/playlog/internal/PlayLoggerContext;[B[I[Ljava/lang/String;[I[[BZ)V
    .registers 10

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->qu:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    iput-object p3, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->qv:[B

    iput-object p4, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->qw:[I

    iput-object p5, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->qx:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->qB:Lcom/google/android/gms/internal/zzapz$zzd;

    iput-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->qC:Lcom/google/android/gms/clearcut/zzb$zzc;

    iput-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->qD:Lcom/google/android/gms/clearcut/zzb$zzc;

    iput-object p6, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->qy:[I

    iput-object p7, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->qz:[[B

    iput-boolean p8, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->qA:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Lcom/google/android/gms/internal/zzapz$zzd;Lcom/google/android/gms/clearcut/zzb$zzc;[I[Ljava/lang/String;[I[[BZ)V
    .registers 10

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->versionCode:I

    iput-object p1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->qu:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    iput-object p2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->qB:Lcom/google/android/gms/internal/zzapz$zzd;

    iput-object p3, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->qC:Lcom/google/android/gms/clearcut/zzb$zzc;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->qD:Lcom/google/android/gms/clearcut/zzb$zzc;

    iput-object p4, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->qw:[I

    iput-object p5, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->qx:[Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->qy:[I

    iput-object p7, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->qz:[[B

    iput-boolean p8, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->qA:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lcom/google/android/gms/clearcut/LogEventParcelable;

    if-eqz v2, :cond_73

    check-cast p1, Lcom/google/android/gms/clearcut/LogEventParcelable;

    iget v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->versionCode:I

    iget v3, p1, Lcom/google/android/gms/clearcut/LogEventParcelable;->versionCode:I

    if-ne v2, v3, :cond_71

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->qu:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    iget-object v3, p1, Lcom/google/android/gms/clearcut/LogEventParcelable;->qu:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_71

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->qv:[B

    iget-object v3, p1, Lcom/google/android/gms/clearcut/LogEventParcelable;->qv:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_71

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->qw:[I

    iget-object v3, p1, Lcom/google/android/gms/clearcut/LogEventParcelable;->qw:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_71

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->qx:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/clearcut/LogEventParcelable;->qx:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_71

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->qB:Lcom/google/android/gms/internal/zzapz$zzd;

    iget-object v3, p1, Lcom/google/android/gms/clearcut/LogEventParcelable;->qB:Lcom/google/android/gms/internal/zzapz$zzd;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_71

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->qC:Lcom/google/android/gms/clearcut/zzb$zzc;

    iget-object v3, p1, Lcom/google/android/gms/clearcut/LogEventParcelable;->qC:Lcom/google/android/gms/clearcut/zzb$zzc;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_71

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->qD:Lcom/google/android/gms/clearcut/zzb$zzc;

    iget-object v3, p1, Lcom/google/android/gms/clearcut/LogEventParcelable;->qD:Lcom/google/android/gms/clearcut/zzb$zzc;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_71

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->qy:[I

    iget-object v3, p1, Lcom/google/android/gms/clearcut/LogEventParcelable;->qy:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_71

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->qz:[[B

    iget-object v3, p1, Lcom/google/android/gms/clearcut/LogEventParcelable;->qz:[[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_71

    iget-boolean v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->qA:Z

    iget-boolean v3, p1, Lcom/google/android/gms/clearcut/LogEventParcelable;->qA:Z

    if-eq v2, v3, :cond_4

    :cond_71
    move v0, v1

    goto :goto_4

    :cond_73
    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 0
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->versionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->qu:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->qv:[B

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->qw:[I

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->qx:[Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->qB:Lcom/google/android/gms/internal/zzapz$zzd;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->qC:Lcom/google/android/gms/clearcut/zzb$zzc;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->qD:Lcom/google/android/gms/clearcut/zzb$zzc;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->qy:[I

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->qz:[[B

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-boolean v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->qA:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1000
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "LogEventParcelable["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->versionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->qu:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", LogEventBytes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->qv:[B

    if-nez v0, :cond_af

    const/4 v0, 0x0

    :goto_27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", TestCodes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->qw:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", MendelPackages: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->qx:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", LogEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->qB:Lcom/google/android/gms/internal/zzapz$zzd;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", ExtensionProducer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->qC:Lcom/google/android/gms/clearcut/zzb$zzc;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", VeProducer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->qD:Lcom/google/android/gms/clearcut/zzb$zzc;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", ExperimentIDs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->qy:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", ExperimentTokens: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->qz:[[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", AddPhenotypeExperimentTokens: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->qA:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_af
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->qv:[B

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    goto/16 :goto_27
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/clearcut/zzd;->zza(Lcom/google/android/gms/clearcut/LogEventParcelable;Landroid/os/Parcel;I)V

    return-void
.end method
