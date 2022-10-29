.class public final Lcom/google/android/gms/ads/internal/request/AdResponseParcel;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/ads/internal/request/zzh;


# instance fields
.field public body:Ljava/lang/String;

.field public final errorCode:I

.field public final orientation:I

.field public final versionCode:I

.field public final zzauu:Z

.field public final zzauv:Z

.field public final zzauw:Z

.field public final zzbnm:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzbnn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzbnp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzbnq:Z

.field public final zzbns:J

.field private zzbot:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

.field public final zzbto:Ljava/lang/String;

.field public final zzcaz:Z

.field public final zzcbq:Z

.field public zzcbr:Ljava/lang/String;

.field public final zzcbx:J

.field public final zzcby:Z

.field public final zzcbz:J

.field public final zzcca:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzccb:Ljava/lang/String;

.field public final zzccc:J

.field public final zzccd:Ljava/lang/String;

.field public final zzcce:Z

.field public final zzccf:Ljava/lang/String;

.field public final zzccg:Ljava/lang/String;

.field public final zzcch:Z

.field public final zzcci:Z

.field public final zzccj:Z

.field public zzcck:Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;

.field public zzccl:Ljava/lang/String;

.field public final zzccm:Ljava/lang/String;

.field public final zzccn:Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;

.field public final zzcco:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzccp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzccq:Z

.field public final zzccr:Lcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;

.field public final zzccs:Ljava/lang/String;

.field public final zzcct:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/ads/internal/request/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/request/zzh;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->CREATOR:Lcom/google/android/gms/ads/internal/request/zzh;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 47

    const/16 v2, 0x12

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    const-wide/16 v11, -0x1

    const/4 v13, 0x0

    const-wide/16 v14, -0x1

    const/16 v16, -0x1

    const/16 v17, 0x0

    const-wide/16 v18, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x1

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    move-object/from16 v1, p0

    move/from16 v6, p1

    invoke-direct/range {v1 .. v44}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZZZLcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;Ljava/lang/String;Ljava/lang/String;ZZLcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .registers 50

    const/16 v2, 0x12

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    const-wide/16 v11, -0x1

    const/4 v13, 0x0

    const/16 v16, -0x1

    const/16 v17, 0x0

    const-wide/16 v18, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x1

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    move-object/from16 v1, p0

    move/from16 v6, p1

    move-wide/from16 v14, p2

    invoke-direct/range {v1 .. v44}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZZZLcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;Ljava/lang/String;Ljava/lang/String;ZZLcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZZZLcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;Ljava/lang/String;Ljava/lang/String;ZZLcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 49
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;JZJ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;JI",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZZ",
            "Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbto:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->body:Ljava/lang/String;

    if-eqz p4, :cond_c2

    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :goto_f
    iput-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbnm:Ljava/util/List;

    iput p5, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->errorCode:I

    if-eqz p6, :cond_c5

    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :goto_19
    iput-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbnn:Ljava/util/List;

    iput-wide p7, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcbx:J

    iput-boolean p9, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcby:Z

    iput-wide p10, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcbz:J

    if-eqz p12, :cond_c8

    invoke-static/range {p12 .. p12}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :goto_27
    iput-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcca:Ljava/util/List;

    move-wide/from16 v0, p13

    iput-wide v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbns:J

    move/from16 v0, p15

    iput v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->orientation:I

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccb:Ljava/lang/String;

    move-wide/from16 v0, p17

    iput-wide v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccc:J

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccd:Ljava/lang/String;

    move/from16 v0, p20

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcce:Z

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccf:Ljava/lang/String;

    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccg:Ljava/lang/String;

    move/from16 v0, p23

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcch:Z

    move/from16 v0, p24

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzauu:Z

    move/from16 v0, p25

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcaz:Z

    move/from16 v0, p26

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcci:Z

    move/from16 v0, p27

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccj:Z

    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcck:Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;

    move-object/from16 v0, p29

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccl:Ljava/lang/String;

    move-object/from16 v0, p30

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccm:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->body:Ljava/lang/String;

    if-nez v2, :cond_8d

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcck:Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;

    if-eqz v2, :cond_8d

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcck:Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;

    sget-object v3, Lcom/google/android/gms/ads/internal/request/StringParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;->zza(Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/ads/internal/request/StringParcel;

    if-eqz v2, :cond_8d

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/request/StringParcel;->zzre()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8d

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/request/StringParcel;->zzre()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->body:Ljava/lang/String;

    :cond_8d
    move/from16 v0, p31

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzauv:Z

    move/from16 v0, p32

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzauw:Z

    move-object/from16 v0, p33

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccn:Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;

    move-object/from16 v0, p34

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcco:Ljava/util/List;

    move-object/from16 v0, p35

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccp:Ljava/util/List;

    move/from16 v0, p36

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccq:Z

    move-object/from16 v0, p37

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccr:Lcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;

    move/from16 v0, p38

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcbq:Z

    move-object/from16 v0, p39

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcbr:Ljava/lang/String;

    move-object/from16 v0, p40

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbnp:Ljava/util/List;

    move-object/from16 v0, p41

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccs:Ljava/lang/String;

    move/from16 v0, p42

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbnq:Z

    move-object/from16 v0, p43

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcct:Ljava/lang/String;

    return-void

    :cond_c2
    const/4 v2, 0x0

    goto/16 :goto_f

    :cond_c5
    const/4 v2, 0x0

    goto/16 :goto_19

    :cond_c8
    const/4 v2, 0x0

    goto/16 :goto_27
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;ZZLcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 87
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;JZJ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;JI",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZZ",
            "Ljava/lang/String;",
            "ZZ",
            "Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/16 v4, 0x12

    const/4 v8, -0x2

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v3, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v9, p5

    move-wide/from16 v10, p6

    move/from16 v12, p8

    move-wide/from16 v13, p9

    move-object/from16 v15, p11

    move-wide/from16 v16, p12

    move/from16 v18, p14

    move-object/from16 v19, p15

    move-wide/from16 v20, p16

    move-object/from16 v22, p18

    move-object/from16 v25, p19

    move/from16 v26, p20

    move/from16 v27, p21

    move/from16 v28, p22

    move/from16 v29, p23

    move/from16 v30, p24

    move-object/from16 v33, p25

    move/from16 v34, p26

    move/from16 v35, p27

    move-object/from16 v36, p28

    move-object/from16 v37, p29

    move-object/from16 v38, p30

    move/from16 v39, p31

    move-object/from16 v40, p32

    move/from16 v41, p33

    move-object/from16 v42, p34

    move-object/from16 v43, p35

    move-object/from16 v44, p36

    move/from16 v45, p37

    move-object/from16 v46, p38

    invoke-direct/range {v3 .. v46}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZZZLcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;Ljava/lang/String;Ljava/lang/String;ZZLcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbot:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;ZZLcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 89
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;JZJ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;JI",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZZ",
            "Ljava/lang/String;",
            "ZZ",
            "Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/16 v4, 0x12

    const/4 v8, -0x2

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v3, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v9, p5

    move-wide/from16 v10, p6

    move/from16 v12, p8

    move-wide/from16 v13, p9

    move-object/from16 v15, p11

    move-wide/from16 v16, p12

    move/from16 v18, p14

    move-object/from16 v19, p15

    move-wide/from16 v20, p16

    move-object/from16 v22, p18

    move/from16 v23, p19

    move-object/from16 v24, p20

    move-object/from16 v25, p21

    move/from16 v26, p22

    move/from16 v27, p23

    move/from16 v28, p24

    move/from16 v29, p25

    move/from16 v30, p26

    move-object/from16 v33, p27

    move/from16 v34, p28

    move/from16 v35, p29

    move-object/from16 v36, p30

    move-object/from16 v37, p31

    move-object/from16 v38, p32

    move/from16 v39, p33

    move-object/from16 v40, p34

    move/from16 v41, p35

    move-object/from16 v42, p36

    move-object/from16 v43, p37

    move-object/from16 v44, p38

    move/from16 v45, p39

    move-object/from16 v46, p40

    invoke-direct/range {v3 .. v46}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZZZLcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;Ljava/lang/String;Ljava/lang/String;ZZLcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbot:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbot:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbot:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_25

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->body:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    new-instance v0, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;

    new-instance v1, Lcom/google/android/gms/ads/internal/request/StringParcel;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->body:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/internal/request/StringParcel;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;-><init>(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcck:Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->body:Ljava/lang/String;

    :cond_25
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/ads/internal/request/zzh;->zza(Lcom/google/android/gms/ads/internal/request/AdResponseParcel;Landroid/os/Parcel;I)V

    return-void
.end method
