.class public final Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/ads/internal/request/zzf;


# instance fields
.field public final applicationInfo:Landroid/content/pm/ApplicationInfo;

.field public final versionCode:I

.field public final zzaot:Ljava/lang/String;

.field public final zzaou:Ljava/lang/String;

.field public final zzaow:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field public final zzapa:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

.field public final zzapo:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

.field public final zzaps:Ljava/util/List;
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

.field public final zzcaq:Landroid/os/Bundle;

.field public final zzcar:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

.field public final zzcas:Landroid/content/pm/PackageInfo;

.field public final zzcat:Ljava/lang/String;

.field public final zzcau:Ljava/lang/String;

.field public final zzcav:Ljava/lang/String;

.field public final zzcaw:Landroid/os/Bundle;

.field public final zzcax:I

.field public final zzcay:Landroid/os/Bundle;

.field public final zzcaz:Z

.field public final zzcba:Landroid/os/Messenger;

.field public final zzcbb:I

.field public final zzcbc:I

.field public final zzcbd:F

.field public final zzcbe:Ljava/lang/String;

.field public final zzcbf:J

.field public final zzcbg:Ljava/lang/String;

.field public final zzcbh:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzcbi:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzcbj:J

.field public final zzcbk:Lcom/google/android/gms/ads/internal/request/CapabilityParcel;

.field public final zzcbl:Ljava/lang/String;

.field public final zzcbm:F

.field public final zzcbn:I

.field public final zzcbo:I

.field public final zzcbp:Z

.field public final zzcbq:Z

.field public final zzcbr:Ljava/lang/String;

.field public final zzcbs:Z

.field public final zzcbt:Ljava/lang/String;

.field public final zzcbu:I

.field public final zzcbv:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/ads/internal/request/zzf;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/request/zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->CREATOR:Lcom/google/android/gms/ads/internal/request/zzf;

    return-void
.end method

.method constructor <init>(ILandroid/os/Bundle;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Landroid/os/Bundle;ILjava/util/List;Landroid/os/Bundle;ZLandroid/os/Messenger;IIFLjava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;Ljava/util/List;JLcom/google/android/gms/ads/internal/request/CapabilityParcel;Ljava/lang/String;FZIIZZLjava/lang/String;Ljava/lang/String;ZILandroid/os/Bundle;)V
    .registers 47
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Lcom/google/android/gms/ads/internal/client/AdRequestParcel;",
            "Lcom/google/android/gms/ads/internal/client/AdSizeParcel;",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            "Landroid/content/pm/PackageInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;",
            "Landroid/os/Bundle;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Z",
            "Landroid/os/Messenger;",
            "IIF",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;J",
            "Lcom/google/android/gms/ads/internal/request/CapabilityParcel;",
            "Ljava/lang/String;",
            "FZIIZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZI",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcaq:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcar:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzapa:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzaou:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p7, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcas:Landroid/content/pm/PackageInfo;

    iput-object p8, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcat:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcau:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcav:Ljava/lang/String;

    iput-object p11, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzaow:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p12, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcaw:Landroid/os/Bundle;

    move/from16 v0, p13

    iput v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcax:I

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzaps:Ljava/util/List;

    if-nez p28, :cond_98

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    :goto_29
    iput-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbi:Ljava/util/List;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcay:Landroid/os/Bundle;

    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcaz:Z

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcba:Landroid/os/Messenger;

    move/from16 v0, p18

    iput v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbb:I

    move/from16 v0, p19

    iput v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbc:I

    move/from16 v0, p20

    iput v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbd:F

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbe:Ljava/lang/String;

    move-wide/from16 v0, p22

    iput-wide v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbf:J

    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbg:Ljava/lang/String;

    if-nez p25, :cond_9d

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    :goto_55
    iput-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbh:Ljava/util/List;

    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzaot:Ljava/lang/String;

    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzapo:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    move-wide/from16 v0, p29

    iput-wide v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbj:J

    move-object/from16 v0, p31

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbk:Lcom/google/android/gms/ads/internal/request/CapabilityParcel;

    move-object/from16 v0, p32

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbl:Ljava/lang/String;

    move/from16 v0, p33

    iput v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbm:F

    move/from16 v0, p34

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbs:Z

    move/from16 v0, p35

    iput v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbn:I

    move/from16 v0, p36

    iput v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbo:I

    move/from16 v0, p37

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbp:Z

    move/from16 v0, p38

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbq:Z

    move-object/from16 v0, p39

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbr:Ljava/lang/String;

    move-object/from16 v0, p40

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbt:Ljava/lang/String;

    move/from16 v0, p41

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzbnq:Z

    move/from16 v0, p42

    iput v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbu:I

    move-object/from16 v0, p43

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcbv:Landroid/os/Bundle;

    return-void

    :cond_98
    invoke-static/range {p28 .. p28}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    goto :goto_29

    :cond_9d
    invoke-static/range {p25 .. p25}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    goto :goto_55
.end method

.method public constructor <init>(Landroid/os/Bundle;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Landroid/os/Bundle;ILjava/util/List;Ljava/util/List;Landroid/os/Bundle;ZLandroid/os/Messenger;IIFLjava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;JLcom/google/android/gms/ads/internal/request/CapabilityParcel;Ljava/lang/String;FZIIZZLjava/lang/String;Ljava/lang/String;ZILandroid/os/Bundle;)V
    .registers 87
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Lcom/google/android/gms/ads/internal/client/AdRequestParcel;",
            "Lcom/google/android/gms/ads/internal/client/AdSizeParcel;",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            "Landroid/content/pm/PackageInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;",
            "Landroid/os/Bundle;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Z",
            "Landroid/os/Messenger;",
            "IIF",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;",
            "J",
            "Lcom/google/android/gms/ads/internal/request/CapabilityParcel;",
            "Ljava/lang/String;",
            "FZIIZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZI",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    const/16 v1, 0x12

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p15

    move/from16 v16, p16

    move-object/from16 v17, p17

    move/from16 v18, p18

    move/from16 v19, p19

    move/from16 v20, p20

    move-object/from16 v21, p21

    move-wide/from16 v22, p22

    move-object/from16 v24, p24

    move-object/from16 v25, p25

    move-object/from16 v26, p26

    move-object/from16 v27, p27

    move-object/from16 v28, p14

    move-wide/from16 v29, p28

    move-object/from16 v31, p30

    move-object/from16 v32, p31

    move/from16 v33, p32

    move/from16 v34, p33

    move/from16 v35, p34

    move/from16 v36, p35

    move/from16 v37, p36

    move/from16 v38, p37

    move-object/from16 v39, p38

    move-object/from16 v40, p39

    move/from16 v41, p40

    move/from16 v42, p41

    move-object/from16 v43, p42

    invoke-direct/range {v0 .. v43}, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;-><init>(ILandroid/os/Bundle;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Landroid/os/Bundle;ILjava/util/List;Landroid/os/Bundle;ZLandroid/os/Messenger;IIFLjava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;Ljava/util/List;JLcom/google/android/gms/ads/internal/request/CapabilityParcel;Ljava/lang/String;FZIIZZLjava/lang/String;Ljava/lang/String;ZILandroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;Ljava/lang/String;J)V
    .registers 50

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzcaq:Landroid/os/Bundle;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzcar:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzapa:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzaou:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzcas:Landroid/content/pm/PackageInfo;

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzcau:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzcav:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzaow:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzcaw:Landroid/os/Bundle;

    move-object/from16 v0, p1

    iget v14, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzcax:I

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzaps:Ljava/util/List;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzcbi:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzcay:Landroid/os/Bundle;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzcaz:Z

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzcba:Landroid/os/Messenger;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzcbb:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzcbc:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzcbd:F

    move/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzcbe:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzcbf:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzcbg:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzcbh:Ljava/util/List;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzaot:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzapo:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzcbk:Lcom/google/android/gms/ads/internal/request/CapabilityParcel;

    move-object/from16 v32, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzcbl:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzcbm:F

    move/from16 v34, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzcbs:Z

    move/from16 v35, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzcbn:I

    move/from16 v36, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzcbo:I

    move/from16 v37, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzcbp:Z

    move/from16 v38, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzcbq:Z

    move/from16 v39, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzcbr:Ljava/lang/String;

    move-object/from16 v40, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzcbt:Ljava/lang/String;

    move-object/from16 v41, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzbnq:Z

    move/from16 v42, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzcbu:I

    move/from16 v43, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzcbv:Landroid/os/Bundle;

    move-object/from16 v44, v0

    move-object/from16 v2, p0

    move-object/from16 v9, p2

    move-wide/from16 v30, p3

    invoke-direct/range {v2 .. v44}, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;-><init>(Landroid/os/Bundle;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Landroid/os/Bundle;ILjava/util/List;Ljava/util/List;Landroid/os/Bundle;ZLandroid/os/Messenger;IIFLjava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;JLcom/google/android/gms/ads/internal/request/CapabilityParcel;Ljava/lang/String;FZIIZZLjava/lang/String;Ljava/lang/String;ZILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/ads/internal/request/zzf;->zza(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Landroid/os/Parcel;I)V

    return-void
.end method
