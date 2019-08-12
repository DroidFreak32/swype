.class public Lcom/fsck/k9/mail/internet/MimeUtility;
.super Ljava/lang/Object;
.source "MimeUtility.java"


# static fields
.field public static final DEFAULT_ATTACHMENT_MIME_TYPE:Ljava/lang/String; = "application/octet-stream"

.field public static final MIME_TYPE_BY_EXTENSION_MAP:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 32
    const/16 v0, 0x34f

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v4

    const-string v2, "application/octet-stream"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "123"

    aput-object v2, v1, v4

    const-string v2, "application/vnd.lotus-1-2-3"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "323"

    aput-object v2, v1, v4

    const-string v2, "text/h323"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "3dml"

    aput-object v3, v2, v4

    const-string v3, "text/vnd.in3d.3dml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "3g2"

    aput-object v3, v2, v4

    const-string v3, "video/3gpp2"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "3gp"

    aput-object v3, v2, v4

    const-string v3, "video/3gpp"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "aab"

    aput-object v3, v2, v4

    const-string v3, "application/x-authorware-bin"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "aac"

    aput-object v3, v2, v4

    const-string v3, "audio/x-aac"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "aam"

    aput-object v3, v2, v4

    const-string v3, "application/x-authorware-map"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "a"

    aput-object v3, v2, v4

    const-string v3, "application/octet-stream"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "aas"

    aput-object v3, v2, v4

    const-string v3, "application/x-authorware-seg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "abw"

    aput-object v3, v2, v4

    const-string v3, "application/x-abiword"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "acc"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.americandynamics.acc"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ace"

    aput-object v3, v2, v4

    const-string v3, "application/x-ace-compressed"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "acu"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.acucobol"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "acutc"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.acucorp"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "acx"

    aput-object v3, v2, v4

    const-string v3, "application/internet-property-stream"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "adp"

    aput-object v3, v2, v4

    const-string v3, "audio/adpcm"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "aep"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.audiograph"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "afm"

    aput-object v3, v2, v4

    const-string v3, "application/x-font-type1"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "afp"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ibm.modcap"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ai"

    aput-object v3, v2, v4

    const-string v3, "application/postscript"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "aif"

    aput-object v3, v2, v4

    const-string v3, "audio/x-aiff"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "aifc"

    aput-object v3, v2, v4

    const-string v3, "audio/x-aiff"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "aiff"

    aput-object v3, v2, v4

    const-string v3, "audio/x-aiff"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "air"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.adobe.air-application-installer-package+zip"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ami"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.amiga.ami"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "apk"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.android.package-archive"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "application"

    aput-object v3, v2, v4

    const-string v3, "application/x-ms-application"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "apr"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.lotus-approach"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "asc"

    aput-object v3, v2, v4

    const-string v3, "application/pgp-signature"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "asf"

    aput-object v3, v2, v4

    const-string v3, "video/x-ms-asf"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "asm"

    aput-object v3, v2, v4

    const-string v3, "text/x-asm"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "aso"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.accpac.simply.aso"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "asr"

    aput-object v3, v2, v4

    const-string v3, "video/x-ms-asf"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "asx"

    aput-object v3, v2, v4

    const-string v3, "video/x-ms-asf"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "atc"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.acucorp"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "atom"

    aput-object v3, v2, v4

    const-string v3, "application/atom+xml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "atomcat"

    aput-object v3, v2, v4

    const-string v3, "application/atomcat+xml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "atomsvc"

    aput-object v3, v2, v4

    const-string v3, "application/atomsvc+xml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "atx"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.antix.game-component"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "au"

    aput-object v3, v2, v4

    const-string v3, "audio/basic"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "avi"

    aput-object v3, v2, v4

    const-string v3, "video/x-msvideo"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "aw"

    aput-object v3, v2, v4

    const-string v3, "application/applixware"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "axs"

    aput-object v3, v2, v4

    const-string v3, "application/olescript"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "azf"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.airzip.filesecure.azf"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "azs"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.airzip.filesecure.azs"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "azw"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.amazon.ebook"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "bas"

    aput-object v3, v2, v4

    const-string v3, "text/plain"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "bat"

    aput-object v3, v2, v4

    const-string v3, "application/x-msdownload"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "bcpio"

    aput-object v3, v2, v4

    const-string v3, "application/x-bcpio"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "bdf"

    aput-object v3, v2, v4

    const-string v3, "application/x-font-bdf"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "bdm"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.syncml.dm+wbxml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "bh2"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.fujitsu.oasysprs"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "bin"

    aput-object v3, v2, v4

    const-string v3, "application/octet-stream"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "bmi"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.bmi"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "bmp"

    aput-object v3, v2, v4

    const-string v3, "image/bmp"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "book"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.framemaker"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "box"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.previewsystems.box"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "boz"

    aput-object v3, v2, v4

    const-string v3, "application/x-bzip2"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "bpk"

    aput-object v3, v2, v4

    const-string v3, "application/octet-stream"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "btif"

    aput-object v3, v2, v4

    const-string v3, "image/prs.btif"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "bz2"

    aput-object v3, v2, v4

    const-string v3, "application/x-bzip2"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "bz"

    aput-object v3, v2, v4

    const-string v3, "application/x-bzip"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x40

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "c4d"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.clonk.c4group"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x41

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "c4f"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.clonk.c4group"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x42

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "c4g"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.clonk.c4group"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x43

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "c4p"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.clonk.c4group"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x44

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "c4u"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.clonk.c4group"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x45

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "cab"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-cab-compressed"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x46

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "car"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.curl.car"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x47

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "cat"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-pki.seccat"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x48

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "cct"

    aput-object v3, v2, v4

    const-string v3, "application/x-director"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x49

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "cc"

    aput-object v3, v2, v4

    const-string v3, "text/x-c"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ccxml"

    aput-object v3, v2, v4

    const-string v3, "application/ccxml+xml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "cdbcmsg"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.contact.cmsg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "cdf"

    aput-object v3, v2, v4

    const-string v3, "application/x-cdf"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "cdkey"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.mediastation.cdkey"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "cdx"

    aput-object v3, v2, v4

    const-string v3, "chemical/x-cdx"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "cdxml"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.chemdraw+xml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x50

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "cdy"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.cinderella"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x51

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "cer"

    aput-object v3, v2, v4

    const-string v3, "application/x-x509-ca-cert"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x52

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "cgm"

    aput-object v3, v2, v4

    const-string v3, "image/cgm"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x53

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "chat"

    aput-object v3, v2, v4

    const-string v3, "application/x-chat"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x54

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "chm"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-htmlhelp"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x55

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "chrt"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.kde.kchart"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x56

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "cif"

    aput-object v3, v2, v4

    const-string v3, "chemical/x-cif"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x57

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "cii"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.anser-web-certificate-issue-initiation"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x58

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "cla"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.claymore"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x59

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "class"

    aput-object v3, v2, v4

    const-string v3, "application/java-vm"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "clkk"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.crick.clicker.keyboard"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "clkp"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.crick.clicker.palette"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "clkt"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.crick.clicker.template"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "clkw"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.crick.clicker.wordbank"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "clkx"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.crick.clicker"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "clp"

    aput-object v3, v2, v4

    const-string v3, "application/x-msclip"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x60

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "cmc"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.cosmocaller"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x61

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "cmdf"

    aput-object v3, v2, v4

    const-string v3, "chemical/x-cmdf"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x62

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "cml"

    aput-object v3, v2, v4

    const-string v3, "chemical/x-cml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x63

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "cmp"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.yellowriver-custom-menu"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x64

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "cmx"

    aput-object v3, v2, v4

    const-string v3, "image/x-cmx"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x65

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "cod"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.rim.cod"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x66

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "com"

    aput-object v3, v2, v4

    const-string v3, "application/x-msdownload"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x67

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "conf"

    aput-object v3, v2, v4

    const-string v3, "text/plain"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x68

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "cpio"

    aput-object v3, v2, v4

    const-string v3, "application/x-cpio"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x69

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "cpp"

    aput-object v3, v2, v4

    const-string v3, "text/x-c"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "cpt"

    aput-object v3, v2, v4

    const-string v3, "application/mac-compactpro"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "crd"

    aput-object v3, v2, v4

    const-string v3, "application/x-mscardfile"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "crl"

    aput-object v3, v2, v4

    const-string v3, "application/pkix-crl"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "crt"

    aput-object v3, v2, v4

    const-string v3, "application/x-x509-ca-cert"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "csh"

    aput-object v3, v2, v4

    const-string v3, "application/x-csh"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "csml"

    aput-object v3, v2, v4

    const-string v3, "chemical/x-csml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x70

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "csp"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.commonspace"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x71

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "css"

    aput-object v3, v2, v4

    const-string v3, "text/css"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x72

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "cst"

    aput-object v3, v2, v4

    const-string v3, "application/x-director"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x73

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "csv"

    aput-object v3, v2, v4

    const-string v3, "text/csv"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x74

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "c"

    aput-object v3, v2, v4

    const-string v3, "text/plain"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x75

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "cu"

    aput-object v3, v2, v4

    const-string v3, "application/cu-seeme"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x76

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "curl"

    aput-object v3, v2, v4

    const-string v3, "text/vnd.curl"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x77

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "cww"

    aput-object v3, v2, v4

    const-string v3, "application/prs.cww"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x78

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "cxt"

    aput-object v3, v2, v4

    const-string v3, "application/x-director"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x79

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "cxx"

    aput-object v3, v2, v4

    const-string v3, "text/x-c"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "daf"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.mobius.daf"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "dataless"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.fdsn.seed"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "davmount"

    aput-object v3, v2, v4

    const-string v3, "application/davmount+xml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "dcr"

    aput-object v3, v2, v4

    const-string v3, "application/x-director"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "dcurl"

    aput-object v3, v2, v4

    const-string v3, "text/vnd.curl.dcurl"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "dd2"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.oma.dd2+xml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x80

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ddd"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.fujixerox.ddd"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x81

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "deb"

    aput-object v3, v2, v4

    const-string v3, "application/x-debian-package"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x82

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "def"

    aput-object v3, v2, v4

    const-string v3, "text/plain"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x83

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "deploy"

    aput-object v3, v2, v4

    const-string v3, "application/octet-stream"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x84

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "der"

    aput-object v3, v2, v4

    const-string v3, "application/x-x509-ca-cert"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x85

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "dfac"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.dreamfactory"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x86

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "dic"

    aput-object v3, v2, v4

    const-string v3, "text/x-c"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x87

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "diff"

    aput-object v3, v2, v4

    const-string v3, "text/plain"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x88

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "dir"

    aput-object v3, v2, v4

    const-string v3, "application/x-director"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x89

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "dis"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.mobius.dis"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "dist"

    aput-object v3, v2, v4

    const-string v3, "application/octet-stream"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "distz"

    aput-object v3, v2, v4

    const-string v3, "application/octet-stream"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "djv"

    aput-object v3, v2, v4

    const-string v3, "image/vnd.djvu"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "djvu"

    aput-object v3, v2, v4

    const-string v3, "image/vnd.djvu"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "dll"

    aput-object v3, v2, v4

    const-string v3, "application/x-msdownload"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "dmg"

    aput-object v3, v2, v4

    const-string v3, "application/octet-stream"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x90

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "dms"

    aput-object v3, v2, v4

    const-string v3, "application/octet-stream"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x91

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "dna"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.dna"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x92

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "doc"

    aput-object v3, v2, v4

    const-string v3, "application/msword"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x93

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "docm"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-word.document.macroenabled.12"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x94

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "docx"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x95

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "dot"

    aput-object v3, v2, v4

    const-string v3, "application/msword"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x96

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "dotm"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-word.template.macroenabled.12"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x97

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "dotx"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.openxmlformats-officedocument.wordprocessingml.template"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x98

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "dp"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.osgi.dp"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x99

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "dpg"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.dpgraph"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "dsc"

    aput-object v3, v2, v4

    const-string v3, "text/prs.lines.tag"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "dtb"

    aput-object v3, v2, v4

    const-string v3, "application/x-dtbook+xml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "dtd"

    aput-object v3, v2, v4

    const-string v3, "application/xml-dtd"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "dts"

    aput-object v3, v2, v4

    const-string v3, "audio/vnd.dts"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "dtshd"

    aput-object v3, v2, v4

    const-string v3, "audio/vnd.dts.hd"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "dump"

    aput-object v3, v2, v4

    const-string v3, "application/octet-stream"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "dvi"

    aput-object v3, v2, v4

    const-string v3, "application/x-dvi"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "dwf"

    aput-object v3, v2, v4

    const-string v3, "model/vnd.dwf"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "dwg"

    aput-object v3, v2, v4

    const-string v3, "image/vnd.dwg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "dxf"

    aput-object v3, v2, v4

    const-string v3, "image/vnd.dxf"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "dxp"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.spotfire.dxp"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "dxr"

    aput-object v3, v2, v4

    const-string v3, "application/x-director"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ecelp4800"

    aput-object v3, v2, v4

    const-string v3, "audio/vnd.nuera.ecelp4800"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ecelp7470"

    aput-object v3, v2, v4

    const-string v3, "audio/vnd.nuera.ecelp7470"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ecelp9600"

    aput-object v3, v2, v4

    const-string v3, "audio/vnd.nuera.ecelp9600"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ecma"

    aput-object v3, v2, v4

    const-string v3, "application/ecmascript"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "edm"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.novadigm.edm"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xab

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "edx"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.novadigm.edx"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xac

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "efif"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.picsel"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xad

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ei6"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.pg.osasli"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xae

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "elc"

    aput-object v3, v2, v4

    const-string v3, "application/octet-stream"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "eml"

    aput-object v3, v2, v4

    const-string v3, "message/rfc822"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "emma"

    aput-object v3, v2, v4

    const-string v3, "application/emma+xml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "eol"

    aput-object v3, v2, v4

    const-string v3, "audio/vnd.digital-winds"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "eot"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-fontobject"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "eps"

    aput-object v3, v2, v4

    const-string v3, "application/postscript"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "epub"

    aput-object v3, v2, v4

    const-string v3, "application/epub+zip"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "es3"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.eszigno3+xml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "esf"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.epson.esf"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "et3"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.eszigno3+xml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "etx"

    aput-object v3, v2, v4

    const-string v3, "text/x-setext"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "evy"

    aput-object v3, v2, v4

    const-string v3, "application/envoy"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xba

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "exe"

    aput-object v3, v2, v4

    const-string v3, "application/octet-stream"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ext"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.novadigm.ext"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ez2"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ezpix-album"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ez3"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ezpix-package"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ez"

    aput-object v3, v2, v4

    const-string v3, "application/andrew-inset"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "f4v"

    aput-object v3, v2, v4

    const-string v3, "video/x-f4v"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "f77"

    aput-object v3, v2, v4

    const-string v3, "text/x-fortran"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "f90"

    aput-object v3, v2, v4

    const-string v3, "text/x-fortran"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "fbs"

    aput-object v3, v2, v4

    const-string v3, "image/vnd.fastbidsheet"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "fdf"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.fdf"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "fe_launch"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.denovo.fcselayout-link"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "fg5"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.fujitsu.oasysgp"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "fgd"

    aput-object v3, v2, v4

    const-string v3, "application/x-director"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "fh4"

    aput-object v3, v2, v4

    const-string v3, "image/x-freehand"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "fh5"

    aput-object v3, v2, v4

    const-string v3, "image/x-freehand"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "fh7"

    aput-object v3, v2, v4

    const-string v3, "image/x-freehand"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xca

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "fhc"

    aput-object v3, v2, v4

    const-string v3, "image/x-freehand"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "fh"

    aput-object v3, v2, v4

    const-string v3, "image/x-freehand"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "fif"

    aput-object v3, v2, v4

    const-string v3, "application/fractals"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "fig"

    aput-object v3, v2, v4

    const-string v3, "application/x-xfig"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xce

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "fli"

    aput-object v3, v2, v4

    const-string v3, "video/x-fli"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "flo"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.micrografx.flo"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "flr"

    aput-object v3, v2, v4

    const-string v3, "x-world/x-vrml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "flv"

    aput-object v3, v2, v4

    const-string v3, "video/x-flv"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "flw"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.kde.kivio"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "flx"

    aput-object v3, v2, v4

    const-string v3, "text/vnd.fmi.flexstor"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "fly"

    aput-object v3, v2, v4

    const-string v3, "text/vnd.fly"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "fm"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.framemaker"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "fnc"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.frogans.fnc"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "for"

    aput-object v3, v2, v4

    const-string v3, "text/x-fortran"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "fpx"

    aput-object v3, v2, v4

    const-string v3, "image/vnd.fpx"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "frame"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.framemaker"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xda

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "fsc"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.fsc.weblaunch"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "fst"

    aput-object v3, v2, v4

    const-string v3, "image/vnd.fst"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ftc"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.fluxtime.clip"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "f"

    aput-object v3, v2, v4

    const-string v3, "text/x-fortran"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xde

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "fti"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.anser-web-funds-transfer-initiation"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "fvt"

    aput-object v3, v2, v4

    const-string v3, "video/vnd.fvt"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "fzs"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.fuzzysheet"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "g3"

    aput-object v3, v2, v4

    const-string v3, "image/g3fax"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "gac"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.groove-account"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "gdl"

    aput-object v3, v2, v4

    const-string v3, "model/vnd.gdl"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "geo"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.dynageo"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "gex"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.geometry-explorer"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ggb"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.geogebra.file"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ggt"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.geogebra.tool"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ghf"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.groove-help"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "gif"

    aput-object v3, v2, v4

    const-string v3, "image/gif"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xea

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "gim"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.groove-identity-message"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xeb

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "gmx"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.gmx"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xec

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "gnumeric"

    aput-object v3, v2, v4

    const-string v3, "application/x-gnumeric"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xed

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "gph"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.flographit"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xee

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "gqf"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.grafeq"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xef

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "gqs"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.grafeq"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf0

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "gram"

    aput-object v3, v2, v4

    const-string v3, "application/srgs"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "gre"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.geometry-explorer"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf2

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "grv"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.groove-injector"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "grxml"

    aput-object v3, v2, v4

    const-string v3, "application/srgs+xml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "gsf"

    aput-object v3, v2, v4

    const-string v3, "application/x-font-ghostscript"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "gtar"

    aput-object v3, v2, v4

    const-string v3, "application/x-gtar"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "gtm"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.groove-tool-message"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "gtw"

    aput-object v3, v2, v4

    const-string v3, "model/vnd.gtw"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "gv"

    aput-object v3, v2, v4

    const-string v3, "text/vnd.graphviz"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "gz"

    aput-object v3, v2, v4

    const-string v3, "application/x-gzip"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xfa

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "h261"

    aput-object v3, v2, v4

    const-string v3, "video/h261"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xfb

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "h263"

    aput-object v3, v2, v4

    const-string v3, "video/h263"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xfc

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "h264"

    aput-object v3, v2, v4

    const-string v3, "video/h264"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xfd

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "hbci"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.hbci"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xfe

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "hdf"

    aput-object v3, v2, v4

    const-string v3, "application/x-hdf"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xff

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "hh"

    aput-object v3, v2, v4

    const-string v3, "text/x-c"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x100

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "hlp"

    aput-object v3, v2, v4

    const-string v3, "application/winhlp"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x101

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "hpgl"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.hp-hpgl"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x102

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "hpid"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.hp-hpid"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x103

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "hps"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.hp-hps"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x104

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "hqx"

    aput-object v3, v2, v4

    const-string v3, "application/mac-binhex40"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x105

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "hta"

    aput-object v3, v2, v4

    const-string v3, "application/hta"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x106

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "htc"

    aput-object v3, v2, v4

    const-string v3, "text/x-component"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x107

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "h"

    aput-object v3, v2, v4

    const-string v3, "text/plain"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x108

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "htke"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.kenameaapp"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x109

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "html"

    aput-object v3, v2, v4

    const-string v3, "text/html"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "htm"

    aput-object v3, v2, v4

    const-string v3, "text/html"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "htt"

    aput-object v3, v2, v4

    const-string v3, "text/webviewhtml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "hvd"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.yamaha.hv-dic"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "hvp"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.yamaha.hv-voice"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "hvs"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.yamaha.hv-script"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "icc"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.iccprofile"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x110

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ice"

    aput-object v3, v2, v4

    const-string v3, "x-conference/x-cooltalk"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x111

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "icm"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.iccprofile"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x112

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ico"

    aput-object v3, v2, v4

    const-string v3, "image/x-icon"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x113

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ics"

    aput-object v3, v2, v4

    const-string v3, "text/calendar"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x114

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ief"

    aput-object v3, v2, v4

    const-string v3, "image/ief"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x115

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ifb"

    aput-object v3, v2, v4

    const-string v3, "text/calendar"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x116

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ifm"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.shana.informed.formdata"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x117

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "iges"

    aput-object v3, v2, v4

    const-string v3, "model/iges"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x118

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "igl"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.igloader"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x119

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "igs"

    aput-object v3, v2, v4

    const-string v3, "model/iges"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "igx"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.micrografx.igx"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "iif"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.shana.informed.interchange"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "iii"

    aput-object v3, v2, v4

    const-string v3, "application/x-iphone"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "imp"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.accpac.simply.imp"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ims"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-ims"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ins"

    aput-object v3, v2, v4

    const-string v3, "application/x-internet-signup"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x120

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "in"

    aput-object v3, v2, v4

    const-string v3, "text/plain"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x121

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ipk"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.shana.informed.package"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x122

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "irm"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ibm.rights-management"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x123

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "irp"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.irepository.package+xml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x124

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "iso"

    aput-object v3, v2, v4

    const-string v3, "application/octet-stream"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x125

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "isp"

    aput-object v3, v2, v4

    const-string v3, "application/x-internet-signup"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x126

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "itp"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.shana.informed.formtemplate"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x127

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ivp"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.immervision-ivp"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x128

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ivu"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.immervision-ivu"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x129

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "jad"

    aput-object v3, v2, v4

    const-string v3, "text/vnd.sun.j2me.app-descriptor"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "jam"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.jam"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "jar"

    aput-object v3, v2, v4

    const-string v3, "application/java-archive"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "java"

    aput-object v3, v2, v4

    const-string v3, "text/x-java-source"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "jfif"

    aput-object v3, v2, v4

    const-string v3, "image/pipeg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "jisp"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.jisp"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "jlt"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.hp-jlyt"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x130

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "jnlp"

    aput-object v3, v2, v4

    const-string v3, "application/x-java-jnlp-file"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x131

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "joda"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.joost.joda-archive"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x132

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "jpeg"

    aput-object v3, v2, v4

    const-string v3, "image/jpeg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x133

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "jpe"

    aput-object v3, v2, v4

    const-string v3, "image/jpeg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x134

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "jpg"

    aput-object v3, v2, v4

    const-string v3, "image/jpeg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x135

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "jpgm"

    aput-object v3, v2, v4

    const-string v3, "video/jpm"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x136

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "jpgv"

    aput-object v3, v2, v4

    const-string v3, "video/jpeg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x137

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "jpm"

    aput-object v3, v2, v4

    const-string v3, "video/jpm"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x138

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "js"

    aput-object v3, v2, v4

    const-string v3, "application/x-javascript"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x139

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "json"

    aput-object v3, v2, v4

    const-string v3, "application/json"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "kar"

    aput-object v3, v2, v4

    const-string v3, "audio/midi"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "karbon"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.kde.karbon"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "kfo"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.kde.kformula"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "kia"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.kidspiration"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "kil"

    aput-object v3, v2, v4

    const-string v3, "application/x-killustrator"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "kml"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.google-earth.kml+xml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x140

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "kmz"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.google-earth.kmz"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x141

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "kne"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.kinar"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x142

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "knp"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.kinar"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x143

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "kon"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.kde.kontour"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x144

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "kpr"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.kde.kpresenter"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x145

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "kpt"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.kde.kpresenter"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x146

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ksh"

    aput-object v3, v2, v4

    const-string v3, "text/plain"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x147

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ksp"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.kde.kspread"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x148

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ktr"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.kahootz"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x149

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ktz"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.kahootz"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "kwd"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.kde.kword"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "kwt"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.kde.kword"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "latex"

    aput-object v3, v2, v4

    const-string v3, "application/x-latex"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "lbd"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.llamagraphics.life-balance.desktop"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "lbe"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.llamagraphics.life-balance.exchange+xml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "les"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.hhe.lesson-player"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x150

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "lha"

    aput-object v3, v2, v4

    const-string v3, "application/octet-stream"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x151

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "link66"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.route66.link66+xml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x152

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "list3820"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ibm.modcap"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x153

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "listafp"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ibm.modcap"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x154

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "list"

    aput-object v3, v2, v4

    const-string v3, "text/plain"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x155

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "log"

    aput-object v3, v2, v4

    const-string v3, "text/plain"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x156

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "lostxml"

    aput-object v3, v2, v4

    const-string v3, "application/lost+xml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x157

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "lrf"

    aput-object v3, v2, v4

    const-string v3, "application/octet-stream"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x158

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "lrm"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-lrm"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x159

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "lsf"

    aput-object v3, v2, v4

    const-string v3, "video/x-la-asf"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x15a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "lsx"

    aput-object v3, v2, v4

    const-string v3, "video/x-la-asf"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x15b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ltf"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.frogans.ltf"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x15c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "lvp"

    aput-object v3, v2, v4

    const-string v3, "audio/vnd.lucent.voice"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x15d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "lwp"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.lotus-wordpro"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x15e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "lzh"

    aput-object v3, v2, v4

    const-string v3, "application/octet-stream"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x15f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "m13"

    aput-object v3, v2, v4

    const-string v3, "application/x-msmediaview"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x160

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "m14"

    aput-object v3, v2, v4

    const-string v3, "application/x-msmediaview"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x161

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "m1v"

    aput-object v3, v2, v4

    const-string v3, "video/mpeg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x162

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "m2a"

    aput-object v3, v2, v4

    const-string v3, "audio/mpeg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x163

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "m2v"

    aput-object v3, v2, v4

    const-string v3, "video/mpeg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x164

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "m3a"

    aput-object v3, v2, v4

    const-string v3, "audio/mpeg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x165

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "m3u"

    aput-object v3, v2, v4

    const-string v3, "audio/x-mpegurl"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x166

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "m4u"

    aput-object v3, v2, v4

    const-string v3, "video/vnd.mpegurl"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x167

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "m4v"

    aput-object v3, v2, v4

    const-string v3, "video/x-m4v"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x168

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ma"

    aput-object v3, v2, v4

    const-string v3, "application/mathematica"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x169

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mag"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ecowin.chart"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x16a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "maker"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.framemaker"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x16b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "man"

    aput-object v3, v2, v4

    const-string v3, "text/troff"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x16c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mathml"

    aput-object v3, v2, v4

    const-string v3, "application/mathml+xml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x16d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mb"

    aput-object v3, v2, v4

    const-string v3, "application/mathematica"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x16e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mbk"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.mobius.mbk"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x16f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mbox"

    aput-object v3, v2, v4

    const-string v3, "application/mbox"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x170

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mc1"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.medcalcdata"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x171

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mcd"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.mcd"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x172

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mcurl"

    aput-object v3, v2, v4

    const-string v3, "text/vnd.curl.mcurl"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x173

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mdb"

    aput-object v3, v2, v4

    const-string v3, "application/x-msaccess"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x174

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mdi"

    aput-object v3, v2, v4

    const-string v3, "image/vnd.ms-modi"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x175

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mesh"

    aput-object v3, v2, v4

    const-string v3, "model/mesh"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x176

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "me"

    aput-object v3, v2, v4

    const-string v3, "text/troff"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x177

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mfm"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.mfmp"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x178

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mgz"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.proteus.magazine"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x179

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mht"

    aput-object v3, v2, v4

    const-string v3, "message/rfc822"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x17a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mhtml"

    aput-object v3, v2, v4

    const-string v3, "message/rfc822"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x17b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mid"

    aput-object v3, v2, v4

    const-string v3, "audio/midi"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x17c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "midi"

    aput-object v3, v2, v4

    const-string v3, "audio/midi"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x17d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mif"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.mif"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x17e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mime"

    aput-object v3, v2, v4

    const-string v3, "message/rfc822"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x17f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mj2"

    aput-object v3, v2, v4

    const-string v3, "video/mj2"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x180

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mjp2"

    aput-object v3, v2, v4

    const-string v3, "video/mj2"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x181

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mlp"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.dolby.mlp"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x182

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mmd"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.chipnuts.karaoke-mmd"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x183

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mmf"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.smaf"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x184

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mmr"

    aput-object v3, v2, v4

    const-string v3, "image/vnd.fujixerox.edmics-mmr"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x185

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mny"

    aput-object v3, v2, v4

    const-string v3, "application/x-msmoney"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x186

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mobi"

    aput-object v3, v2, v4

    const-string v3, "application/x-mobipocket-ebook"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x187

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "movie"

    aput-object v3, v2, v4

    const-string v3, "video/x-sgi-movie"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x188

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mov"

    aput-object v3, v2, v4

    const-string v3, "video/quicktime"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x189

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mp2a"

    aput-object v3, v2, v4

    const-string v3, "audio/mpeg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x18a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mp2"

    aput-object v3, v2, v4

    const-string v3, "video/mpeg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x18b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mp3"

    aput-object v3, v2, v4

    const-string v3, "audio/mpeg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x18c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mp4a"

    aput-object v3, v2, v4

    const-string v3, "audio/mp4"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x18d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mp4s"

    aput-object v3, v2, v4

    const-string v3, "application/mp4"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x18e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mp4"

    aput-object v3, v2, v4

    const-string v3, "video/mp4"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x18f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mp4v"

    aput-object v3, v2, v4

    const-string v3, "video/mp4"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x190

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mpa"

    aput-object v3, v2, v4

    const-string v3, "video/mpeg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x191

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mpc"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.mophun.certificate"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x192

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mpeg"

    aput-object v3, v2, v4

    const-string v3, "video/mpeg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x193

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mpe"

    aput-object v3, v2, v4

    const-string v3, "video/mpeg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x194

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mpg4"

    aput-object v3, v2, v4

    const-string v3, "video/mp4"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x195

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mpga"

    aput-object v3, v2, v4

    const-string v3, "audio/mpeg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x196

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mpg"

    aput-object v3, v2, v4

    const-string v3, "video/mpeg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x197

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mpkg"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.apple.installer+xml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x198

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mpm"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.blueice.multipass"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x199

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mpn"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.mophun.application"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x19a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mpp"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-project"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x19b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mpt"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-project"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x19c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mpv2"

    aput-object v3, v2, v4

    const-string v3, "video/mpeg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x19d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mpy"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ibm.minipay"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x19e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mqy"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.mobius.mqy"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x19f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mrc"

    aput-object v3, v2, v4

    const-string v3, "application/marc"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1a0

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mscml"

    aput-object v3, v2, v4

    const-string v3, "application/mediaservercontrol+xml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1a1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mseed"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.fdsn.mseed"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1a2

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mseq"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.mseq"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1a3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "msf"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.epson.msf"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1a4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "msh"

    aput-object v3, v2, v4

    const-string v3, "model/mesh"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1a5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "msi"

    aput-object v3, v2, v4

    const-string v3, "application/x-msdownload"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1a6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ms"

    aput-object v3, v2, v4

    const-string v3, "text/troff"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1a7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "msty"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.muvee.style"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1a8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mts"

    aput-object v3, v2, v4

    const-string v3, "model/vnd.mts"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1a9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mus"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.musician"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1aa

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "musicxml"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.recordare.musicxml+xml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1ab

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mvb"

    aput-object v3, v2, v4

    const-string v3, "application/x-msmediaview"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1ac

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mxf"

    aput-object v3, v2, v4

    const-string v3, "application/mxf"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1ad

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mxl"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.recordare.musicxml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1ae

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mxml"

    aput-object v3, v2, v4

    const-string v3, "application/xv+xml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1af

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mxs"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.triscape.mxs"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1b0

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mxu"

    aput-object v3, v2, v4

    const-string v3, "video/vnd.mpegurl"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1b1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "nb"

    aput-object v3, v2, v4

    const-string v3, "application/mathematica"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1b2

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "nc"

    aput-object v3, v2, v4

    const-string v3, "application/x-netcdf"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1b3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ncx"

    aput-object v3, v2, v4

    const-string v3, "application/x-dtbncx+xml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1b4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "n-gage"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.nokia.n-gage.symbian.install"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1b5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ngdat"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.nokia.n-gage.data"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1b6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "nlu"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.neurolanguage.nlu"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1b7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "nml"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.enliven"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1b8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "nnd"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.noblenet-directory"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1b9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "nns"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.noblenet-sealer"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1ba

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "nnw"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.noblenet-web"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1bb

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "npx"

    aput-object v3, v2, v4

    const-string v3, "image/vnd.net-fpx"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1bc

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "nsf"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.lotus-notes"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1bd

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "nws"

    aput-object v3, v2, v4

    const-string v3, "message/rfc822"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1be

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "oa2"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.fujitsu.oasys2"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1bf

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "oa3"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.fujitsu.oasys3"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1c0

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "o"

    aput-object v3, v2, v4

    const-string v3, "application/octet-stream"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1c1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "oas"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.fujitsu.oasys"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1c2

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "obd"

    aput-object v3, v2, v4

    const-string v3, "application/x-msbinder"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1c3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "obj"

    aput-object v3, v2, v4

    const-string v3, "application/octet-stream"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1c4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "oda"

    aput-object v3, v2, v4

    const-string v3, "application/oda"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1c5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "odb"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.oasis.opendocument.database"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1c6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "odc"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.oasis.opendocument.chart"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1c7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "odf"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.oasis.opendocument.formula"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1c8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "odft"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.oasis.opendocument.formula-template"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1c9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "odg"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.oasis.opendocument.graphics"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1ca

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "odi"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.oasis.opendocument.image"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1cb

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "odp"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.oasis.opendocument.presentation"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1cc

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ods"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.oasis.opendocument.spreadsheet"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1cd

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "odt"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.oasis.opendocument.text"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1ce

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "oga"

    aput-object v3, v2, v4

    const-string v3, "audio/ogg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1cf

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ogg"

    aput-object v3, v2, v4

    const-string v3, "audio/ogg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1d0

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ogv"

    aput-object v3, v2, v4

    const-string v3, "video/ogg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1d1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ogx"

    aput-object v3, v2, v4

    const-string v3, "application/ogg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1d2

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "onepkg"

    aput-object v3, v2, v4

    const-string v3, "application/onenote"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1d3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "onetmp"

    aput-object v3, v2, v4

    const-string v3, "application/onenote"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1d4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "onetoc2"

    aput-object v3, v2, v4

    const-string v3, "application/onenote"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1d5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "onetoc"

    aput-object v3, v2, v4

    const-string v3, "application/onenote"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1d6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "opf"

    aput-object v3, v2, v4

    const-string v3, "application/oebps-package+xml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1d7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "oprc"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.palm"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1d8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "org"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.lotus-organizer"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1d9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "osf"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.yamaha.openscoreformat"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1da

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "osfpvg"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.yamaha.openscoreformat.osfpvg+xml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1db

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "otc"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.oasis.opendocument.chart-template"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1dc

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "otf"

    aput-object v3, v2, v4

    const-string v3, "application/x-font-otf"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1dd

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "otg"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.oasis.opendocument.graphics-template"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1de

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "oth"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.oasis.opendocument.text-web"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1df

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "oti"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.oasis.opendocument.image-template"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1e0

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "otm"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.oasis.opendocument.text-master"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1e1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "otp"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.oasis.opendocument.presentation-template"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1e2

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ots"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.oasis.opendocument.spreadsheet-template"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1e3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ott"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.oasis.opendocument.text-template"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1e4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "oxt"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.openofficeorg.extension"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1e5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "p10"

    aput-object v3, v2, v4

    const-string v3, "application/pkcs10"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1e6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "p12"

    aput-object v3, v2, v4

    const-string v3, "application/x-pkcs12"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1e7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "p7b"

    aput-object v3, v2, v4

    const-string v3, "application/x-pkcs7-certificates"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1e8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "p7c"

    aput-object v3, v2, v4

    const-string v3, "application/x-pkcs7-mime"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1e9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "p7m"

    aput-object v3, v2, v4

    const-string v3, "application/x-pkcs7-mime"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1ea

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "p7r"

    aput-object v3, v2, v4

    const-string v3, "application/x-pkcs7-certreqresp"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1eb

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "p7s"

    aput-object v3, v2, v4

    const-string v3, "application/x-pkcs7-signature"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1ec

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "pas"

    aput-object v3, v2, v4

    const-string v3, "text/x-pascal"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1ed

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "pbd"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.powerbuilder6"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1ee

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "pbm"

    aput-object v3, v2, v4

    const-string v3, "image/x-portable-bitmap"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1ef

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "pcf"

    aput-object v3, v2, v4

    const-string v3, "application/x-font-pcf"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1f0

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "pcl"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.hp-pcl"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1f1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "pclxl"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.hp-pclxl"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1f2

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "pct"

    aput-object v3, v2, v4

    const-string v3, "image/x-pict"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1f3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "pcurl"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.curl.pcurl"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1f4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "pcx"

    aput-object v3, v2, v4

    const-string v3, "image/x-pcx"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1f5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "pdb"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.palm"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1f6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "pdf"

    aput-object v3, v2, v4

    const-string v3, "application/pdf"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1f7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "pfa"

    aput-object v3, v2, v4

    const-string v3, "application/x-font-type1"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1f8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "pfb"

    aput-object v3, v2, v4

    const-string v3, "application/x-font-type1"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1f9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "pfm"

    aput-object v3, v2, v4

    const-string v3, "application/x-font-type1"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1fa

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "pfr"

    aput-object v3, v2, v4

    const-string v3, "application/font-tdpfr"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1fb

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "pfx"

    aput-object v3, v2, v4

    const-string v3, "application/x-pkcs12"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1fc

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "pgm"

    aput-object v3, v2, v4

    const-string v3, "image/x-portable-graymap"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1fd

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "pgn"

    aput-object v3, v2, v4

    const-string v3, "application/x-chess-pgn"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1fe

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "pgp"

    aput-object v3, v2, v4

    const-string v3, "application/pgp-encrypted"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1ff

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "pic"

    aput-object v3, v2, v4

    const-string v3, "image/x-pict"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x200

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "pkg"

    aput-object v3, v2, v4

    const-string v3, "application/octet-stream"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x201

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "pki"

    aput-object v3, v2, v4

    const-string v3, "application/pkixcmp"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x202

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "pkipath"

    aput-object v3, v2, v4

    const-string v3, "application/pkix-pkipath"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x203

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "pko"

    aput-object v3, v2, v4

    const-string v3, "application/ynd.ms-pkipko"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x204

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "plb"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.3gpp.pic-bw-large"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x205

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "plc"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.mobius.plc"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x206

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "plf"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.pocketlearn"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x207

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "pls"

    aput-object v3, v2, v4

    const-string v3, "application/pls+xml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x208

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "pl"

    aput-object v3, v2, v4

    const-string v3, "text/plain"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x209

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "pma"

    aput-object v3, v2, v4

    const-string v3, "application/x-perfmon"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x20a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "pmc"

    aput-object v3, v2, v4

    const-string v3, "application/x-perfmon"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x20b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "pml"

    aput-object v3, v2, v4

    const-string v3, "application/x-perfmon"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x20c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "pmr"

    aput-object v3, v2, v4

    const-string v3, "application/x-perfmon"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x20d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "pmw"

    aput-object v3, v2, v4

    const-string v3, "application/x-perfmon"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x20e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "png"

    aput-object v3, v2, v4

    const-string v3, "image/png"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x20f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "pnm"

    aput-object v3, v2, v4

    const-string v3, "image/x-portable-anymap"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x210

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "portpkg"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.macports.portpkg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x211

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "pot,"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-powerpoint"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x212

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "pot"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-powerpoint"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x213

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "potm"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-powerpoint.template.macroenabled.12"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x214

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "potx"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.openxmlformats-officedocument.presentationml.template"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x215

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ppa"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-powerpoint"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x216

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ppam"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-powerpoint.addin.macroenabled.12"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x217

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ppd"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.cups-ppd"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x218

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ppm"

    aput-object v3, v2, v4

    const-string v3, "image/x-portable-pixmap"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x219

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "pps"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-powerpoint"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x21a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ppsm"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-powerpoint.slideshow.macroenabled.12"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x21b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ppsx"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.openxmlformats-officedocument.presentationml.slideshow"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x21c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ppt"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-powerpoint"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x21d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "pptm"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-powerpoint.presentation.macroenabled.12"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x21e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "pptx"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x21f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "pqa"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.palm"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x220

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "prc"

    aput-object v3, v2, v4

    const-string v3, "application/x-mobipocket-ebook"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x221

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "pre"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.lotus-freelance"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x222

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "prf"

    aput-object v3, v2, v4

    const-string v3, "application/pics-rules"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x223

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ps"

    aput-object v3, v2, v4

    const-string v3, "application/postscript"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x224

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "psb"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.3gpp.pic-bw-small"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x225

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "psd"

    aput-object v3, v2, v4

    const-string v3, "image/vnd.adobe.photoshop"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x226

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "psf"

    aput-object v3, v2, v4

    const-string v3, "application/x-font-linux-psf"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x227

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "p"

    aput-object v3, v2, v4

    const-string v3, "text/x-pascal"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x228

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ptid"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.pvi.ptid1"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x229

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "pub"

    aput-object v3, v2, v4

    const-string v3, "application/x-mspublisher"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x22a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "pvb"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.3gpp.pic-bw-var"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x22b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "pwn"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.3m.post-it-notes"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x22c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "pwz"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-powerpoint"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x22d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "pya"

    aput-object v3, v2, v4

    const-string v3, "audio/vnd.ms-playready.media.pya"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x22e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "pyc"

    aput-object v3, v2, v4

    const-string v3, "application/x-python-code"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x22f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "pyo"

    aput-object v3, v2, v4

    const-string v3, "application/x-python-code"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x230

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "py"

    aput-object v3, v2, v4

    const-string v3, "text/x-python"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x231

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "pyv"

    aput-object v3, v2, v4

    const-string v3, "video/vnd.ms-playready.media.pyv"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x232

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "qam"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.epson.quickanime"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x233

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "qbo"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.intu.qbo"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x234

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "qfx"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.intu.qfx"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x235

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "qps"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.publishare-delta-tree"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x236

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "qt"

    aput-object v3, v2, v4

    const-string v3, "video/quicktime"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x237

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "qwd"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.quark.quarkxpress"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x238

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "qwt"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.quark.quarkxpress"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x239

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "qxb"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.quark.quarkxpress"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x23a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "qxd"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.quark.quarkxpress"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x23b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "qxl"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.quark.quarkxpress"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x23c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "qxt"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.quark.quarkxpress"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x23d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ra"

    aput-object v3, v2, v4

    const-string v3, "audio/x-pn-realaudio"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x23e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ram"

    aput-object v3, v2, v4

    const-string v3, "audio/x-pn-realaudio"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x23f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "rar"

    aput-object v3, v2, v4

    const-string v3, "application/x-rar-compressed"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x240

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ras"

    aput-object v3, v2, v4

    const-string v3, "image/x-cmu-raster"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x241

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "rcprofile"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ipunplugged.rcprofile"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x242

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "rdf"

    aput-object v3, v2, v4

    const-string v3, "application/rdf+xml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x243

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "rdz"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.data-vision.rdz"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x244

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "rep"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.businessobjects"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x245

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "res"

    aput-object v3, v2, v4

    const-string v3, "application/x-dtbresource+xml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x246

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "rgb"

    aput-object v3, v2, v4

    const-string v3, "image/x-rgb"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x247

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "rif"

    aput-object v3, v2, v4

    const-string v3, "application/reginfo+xml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x248

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "rl"

    aput-object v3, v2, v4

    const-string v3, "application/resource-lists+xml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x249

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "rlc"

    aput-object v3, v2, v4

    const-string v3, "image/vnd.fujixerox.edmics-rlc"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x24a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "rld"

    aput-object v3, v2, v4

    const-string v3, "application/resource-lists-diff+xml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x24b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "rm"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.rn-realmedia"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x24c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "rmi"

    aput-object v3, v2, v4

    const-string v3, "audio/midi"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x24d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "rmp"

    aput-object v3, v2, v4

    const-string v3, "audio/x-pn-realaudio-plugin"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x24e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "rms"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.jcp.javame.midlet-rms"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x24f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "rnc"

    aput-object v3, v2, v4

    const-string v3, "application/relax-ng-compact-syntax"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x250

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "roff"

    aput-object v3, v2, v4

    const-string v3, "text/troff"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x251

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "rpm"

    aput-object v3, v2, v4

    const-string v3, "application/x-rpm"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x252

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "rpss"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.nokia.radio-presets"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x253

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "rpst"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.nokia.radio-preset"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x254

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "rq"

    aput-object v3, v2, v4

    const-string v3, "application/sparql-query"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x255

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "rs"

    aput-object v3, v2, v4

    const-string v3, "application/rls-services+xml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x256

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "rsd"

    aput-object v3, v2, v4

    const-string v3, "application/rsd+xml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x257

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "rss"

    aput-object v3, v2, v4

    const-string v3, "application/rss+xml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x258

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "rtf"

    aput-object v3, v2, v4

    const-string v3, "application/rtf"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x259

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "rtx"

    aput-object v3, v2, v4

    const-string v3, "text/richtext"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x25a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "saf"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.yamaha.smaf-audio"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x25b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sbml"

    aput-object v3, v2, v4

    const-string v3, "application/sbml+xml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x25c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sc"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ibm.secure-container"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x25d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "scd"

    aput-object v3, v2, v4

    const-string v3, "application/x-msschedule"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x25e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "scm"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.lotus-screencam"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x25f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "scq"

    aput-object v3, v2, v4

    const-string v3, "application/scvp-cv-request"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x260

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "scs"

    aput-object v3, v2, v4

    const-string v3, "application/scvp-cv-response"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x261

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sct"

    aput-object v3, v2, v4

    const-string v3, "text/scriptlet"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x262

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "scurl"

    aput-object v3, v2, v4

    const-string v3, "text/vnd.curl.scurl"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x263

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sda"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.stardivision.draw"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x264

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sdc"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.stardivision.calc"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x265

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sdd"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.stardivision.impress"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x266

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sdkd"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.solent.sdkm+xml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x267

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sdkm"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.solent.sdkm+xml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x268

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sdp"

    aput-object v3, v2, v4

    const-string v3, "application/sdp"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x269

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sdw"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.stardivision.writer"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x26a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "see"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.seemail"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x26b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "seed"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.fdsn.seed"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x26c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sema"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.sema"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x26d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "semd"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.semd"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x26e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "semf"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.semf"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x26f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ser"

    aput-object v3, v2, v4

    const-string v3, "application/java-serialized-object"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x270

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "setpay"

    aput-object v3, v2, v4

    const-string v3, "application/set-payment-initiation"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x271

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "setreg"

    aput-object v3, v2, v4

    const-string v3, "application/set-registration-initiation"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x272

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sfd-hdstx"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.hydrostatix.sof-data"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x273

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sfs"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.spotfire.sfs"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x274

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sgl"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.stardivision.writer-global"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x275

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sgml"

    aput-object v3, v2, v4

    const-string v3, "text/sgml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x276

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sgm"

    aput-object v3, v2, v4

    const-string v3, "text/sgml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x277

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sh"

    aput-object v3, v2, v4

    const-string v3, "application/x-sh"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x278

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "shar"

    aput-object v3, v2, v4

    const-string v3, "application/x-shar"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x279

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "shf"

    aput-object v3, v2, v4

    const-string v3, "application/shf+xml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x27a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sic"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.wap.sic"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x27b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sig"

    aput-object v3, v2, v4

    const-string v3, "application/pgp-signature"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x27c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "silo"

    aput-object v3, v2, v4

    const-string v3, "model/mesh"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x27d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sis"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.symbian.install"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x27e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sisx"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.symbian.install"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x27f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sit"

    aput-object v3, v2, v4

    const-string v3, "application/x-stuffit"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x280

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "si"

    aput-object v3, v2, v4

    const-string v3, "text/vnd.wap.si"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x281

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sitx"

    aput-object v3, v2, v4

    const-string v3, "application/x-stuffitx"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x282

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "skd"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.koan"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x283

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "skm"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.koan"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x284

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "skp"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.koan"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x285

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "skt"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.koan"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x286

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "slc"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.wap.slc"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x287

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sldm"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-powerpoint.slide.macroenabled.12"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x288

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sldx"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.openxmlformats-officedocument.presentationml.slide"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x289

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "slt"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.epson.salt"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x28a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sl"

    aput-object v3, v2, v4

    const-string v3, "text/vnd.wap.sl"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x28b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "smf"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.stardivision.math"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x28c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "smi"

    aput-object v3, v2, v4

    const-string v3, "application/smil+xml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x28d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "smil"

    aput-object v3, v2, v4

    const-string v3, "application/smil+xml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x28e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "snd"

    aput-object v3, v2, v4

    const-string v3, "audio/basic"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x28f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "snf"

    aput-object v3, v2, v4

    const-string v3, "application/x-font-snf"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x290

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "so"

    aput-object v3, v2, v4

    const-string v3, "application/octet-stream"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x291

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "spc"

    aput-object v3, v2, v4

    const-string v3, "application/x-pkcs7-certificates"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x292

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "spf"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.yamaha.smaf-phrase"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x293

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "spl"

    aput-object v3, v2, v4

    const-string v3, "application/x-futuresplash"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x294

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "spot"

    aput-object v3, v2, v4

    const-string v3, "text/vnd.in3d.spot"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x295

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "spp"

    aput-object v3, v2, v4

    const-string v3, "application/scvp-vp-response"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x296

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "spq"

    aput-object v3, v2, v4

    const-string v3, "application/scvp-vp-request"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x297

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "spx"

    aput-object v3, v2, v4

    const-string v3, "audio/ogg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x298

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "src"

    aput-object v3, v2, v4

    const-string v3, "application/x-wais-source"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x299

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "srx"

    aput-object v3, v2, v4

    const-string v3, "application/sparql-results+xml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x29a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sse"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.kodak-descriptor"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x29b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ssf"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.epson.ssf"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x29c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ssml"

    aput-object v3, v2, v4

    const-string v3, "application/ssml+xml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x29d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sst"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-pkicertstore"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x29e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "stc"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.sun.xml.calc.template"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x29f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "std"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.sun.xml.draw.template"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2a0

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "s"

    aput-object v3, v2, v4

    const-string v3, "text/x-asm"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2a1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "stf"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.wt.stf"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2a2

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sti"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.sun.xml.impress.template"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2a3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "stk"

    aput-object v3, v2, v4

    const-string v3, "application/hyperstudio"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2a4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "stl"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-pki.stl"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2a5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "stm"

    aput-object v3, v2, v4

    const-string v3, "text/html"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2a6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "str"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.pg.format"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2a7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "stw"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.sun.xml.writer.template"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2a8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sus"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.sus-calendar"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2a9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "susp"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.sus-calendar"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2aa

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sv4cpio"

    aput-object v3, v2, v4

    const-string v3, "application/x-sv4cpio"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2ab

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sv4crc"

    aput-object v3, v2, v4

    const-string v3, "application/x-sv4crc"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2ac

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "svd"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.svd"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2ad

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "svg"

    aput-object v3, v2, v4

    const-string v3, "image/svg+xml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2ae

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "svgz"

    aput-object v3, v2, v4

    const-string v3, "image/svg+xml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2af

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "swa"

    aput-object v3, v2, v4

    const-string v3, "application/x-director"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2b0

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "swf"

    aput-object v3, v2, v4

    const-string v3, "application/x-shockwave-flash"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2b1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "swi"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.arastra.swi"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2b2

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sxc"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.sun.xml.calc"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2b3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sxd"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.sun.xml.draw"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2b4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sxg"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.sun.xml.writer.global"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2b5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sxi"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.sun.xml.impress"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2b6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sxm"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.sun.xml.math"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2b7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sxw"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.sun.xml.writer"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2b8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "tao"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.tao.intent-module-archive"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2b9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "t"

    aput-object v3, v2, v4

    const-string v3, "application/x-troff"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2ba

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "tar"

    aput-object v3, v2, v4

    const-string v3, "application/x-tar"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2bb

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "tcap"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.3gpp2.tcap"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2bc

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "tcl"

    aput-object v3, v2, v4

    const-string v3, "application/x-tcl"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2bd

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "teacher"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.smart.teacher"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2be

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "tex"

    aput-object v3, v2, v4

    const-string v3, "application/x-tex"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2bf

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "texi"

    aput-object v3, v2, v4

    const-string v3, "application/x-texinfo"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2c0

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "texinfo"

    aput-object v3, v2, v4

    const-string v3, "application/x-texinfo"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2c1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "text"

    aput-object v3, v2, v4

    const-string v3, "text/plain"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2c2

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "tfm"

    aput-object v3, v2, v4

    const-string v3, "application/x-tex-tfm"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2c3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "tgz"

    aput-object v3, v2, v4

    const-string v3, "application/x-gzip"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2c4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "tiff"

    aput-object v3, v2, v4

    const-string v3, "image/tiff"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2c5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "tif"

    aput-object v3, v2, v4

    const-string v3, "image/tiff"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2c6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "tmo"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.tmobile-livetv"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2c7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "torrent"

    aput-object v3, v2, v4

    const-string v3, "application/x-bittorrent"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2c8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "tpl"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.groove-tool-template"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2c9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "tpt"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.trid.tpt"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2ca

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "tra"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.trueapp"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2cb

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "trm"

    aput-object v3, v2, v4

    const-string v3, "application/x-msterminal"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2cc

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "tr"

    aput-object v3, v2, v4

    const-string v3, "text/troff"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2cd

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "tsv"

    aput-object v3, v2, v4

    const-string v3, "text/tab-separated-values"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2ce

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ttc"

    aput-object v3, v2, v4

    const-string v3, "application/x-font-ttf"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2cf

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ttf"

    aput-object v3, v2, v4

    const-string v3, "application/x-font-ttf"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2d0

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "twd"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.simtech-mindmapper"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2d1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "twds"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.simtech-mindmapper"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2d2

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "txd"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.genomatix.tuxedo"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2d3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "txf"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.mobius.txf"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2d4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "txt"

    aput-object v3, v2, v4

    const-string v3, "text/plain"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2d5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "u32"

    aput-object v3, v2, v4

    const-string v3, "application/x-authorware-bin"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2d6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "udeb"

    aput-object v3, v2, v4

    const-string v3, "application/x-debian-package"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2d7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ufd"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ufdl"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2d8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ufdl"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ufdl"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2d9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "uls"

    aput-object v3, v2, v4

    const-string v3, "text/iuls"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2da

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "umj"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.umajin"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2db

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "unityweb"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.unity"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2dc

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "uoml"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.uoml+xml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2dd

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "uris"

    aput-object v3, v2, v4

    const-string v3, "text/uri-list"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2de

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "uri"

    aput-object v3, v2, v4

    const-string v3, "text/uri-list"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2df

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "urls"

    aput-object v3, v2, v4

    const-string v3, "text/uri-list"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2e0

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ustar"

    aput-object v3, v2, v4

    const-string v3, "application/x-ustar"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2e1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "utz"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.uiq.theme"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2e2

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "uu"

    aput-object v3, v2, v4

    const-string v3, "text/x-uuencode"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2e3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "vcd"

    aput-object v3, v2, v4

    const-string v3, "application/x-cdlink"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2e4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "vcf"

    aput-object v3, v2, v4

    const-string v3, "text/x-vcard"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2e5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "vcg"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.groove-vcard"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2e6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "vcs"

    aput-object v3, v2, v4

    const-string v3, "text/x-vcalendar"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2e7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "vcx"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.vcx"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2e8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "vis"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.visionary"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2e9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "viv"

    aput-object v3, v2, v4

    const-string v3, "video/vnd.vivo"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2ea

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "vor"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.stardivision.writer"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2eb

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "vox"

    aput-object v3, v2, v4

    const-string v3, "application/x-authorware-bin"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2ec

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "vrml"

    aput-object v3, v2, v4

    const-string v3, "x-world/x-vrml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2ed

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "vsd"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.visio"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2ee

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "vsf"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.vsf"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2ef

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "vss"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.visio"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2f0

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "vst"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.visio"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2f1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "vsw"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.visio"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2f2

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "vtu"

    aput-object v3, v2, v4

    const-string v3, "model/vnd.vtu"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2f3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "vxml"

    aput-object v3, v2, v4

    const-string v3, "application/voicexml+xml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2f4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "w3d"

    aput-object v3, v2, v4

    const-string v3, "application/x-director"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2f5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "wad"

    aput-object v3, v2, v4

    const-string v3, "application/x-doom"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2f6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "wav"

    aput-object v3, v2, v4

    const-string v3, "audio/x-wav"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2f7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "wax"

    aput-object v3, v2, v4

    const-string v3, "audio/x-ms-wax"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2f8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "wbmp"

    aput-object v3, v2, v4

    const-string v3, "image/vnd.wap.wbmp"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2f9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "wbs"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.criticaltools.wbs+xml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2fa

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "wbxml"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.wap.wbxml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2fb

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "wcm"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-works"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2fc

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "wdb"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-works"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2fd

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "wiz"

    aput-object v3, v2, v4

    const-string v3, "application/msword"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2fe

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "wks"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-works"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2ff

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "wma"

    aput-object v3, v2, v4

    const-string v3, "audio/x-ms-wma"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x300

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "wmd"

    aput-object v3, v2, v4

    const-string v3, "application/x-ms-wmd"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x301

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "wmf"

    aput-object v3, v2, v4

    const-string v3, "application/x-msmetafile"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x302

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "wmlc"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.wap.wmlc"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x303

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "wmlsc"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.wap.wmlscriptc"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x304

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "wmls"

    aput-object v3, v2, v4

    const-string v3, "text/vnd.wap.wmlscript"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x305

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "wml"

    aput-object v3, v2, v4

    const-string v3, "text/vnd.wap.wml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x306

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "wm"

    aput-object v3, v2, v4

    const-string v3, "video/x-ms-wm"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x307

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "wmv"

    aput-object v3, v2, v4

    const-string v3, "video/x-ms-wmv"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x308

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "wmx"

    aput-object v3, v2, v4

    const-string v3, "video/x-ms-wmx"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x309

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "wmz"

    aput-object v3, v2, v4

    const-string v3, "application/x-ms-wmz"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x30a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "wpd"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.wordperfect"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x30b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "wpl"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-wpl"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x30c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "wps"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-works"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x30d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "wqd"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.wqd"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x30e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "wri"

    aput-object v3, v2, v4

    const-string v3, "application/x-mswrite"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x30f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "wrl"

    aput-object v3, v2, v4

    const-string v3, "x-world/x-vrml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x310

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "wrz"

    aput-object v3, v2, v4

    const-string v3, "x-world/x-vrml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x311

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "wsdl"

    aput-object v3, v2, v4

    const-string v3, "application/wsdl+xml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x312

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "wspolicy"

    aput-object v3, v2, v4

    const-string v3, "application/wspolicy+xml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x313

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "wtb"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.webturbo"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x314

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "wvx"

    aput-object v3, v2, v4

    const-string v3, "video/x-ms-wvx"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x315

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "x32"

    aput-object v3, v2, v4

    const-string v3, "application/x-authorware-bin"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x316

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "x3d"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.hzn-3d-crossword"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x317

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "xaf"

    aput-object v3, v2, v4

    const-string v3, "x-world/x-vrml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x318

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "xap"

    aput-object v3, v2, v4

    const-string v3, "application/x-silverlight-app"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x319

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "xar"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.xara"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x31a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "xbap"

    aput-object v3, v2, v4

    const-string v3, "application/x-ms-xbap"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x31b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "xbd"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.fujixerox.docuworks.binder"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x31c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "xbm"

    aput-object v3, v2, v4

    const-string v3, "image/x-xbitmap"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x31d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "xdm"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.syncml.dm+xml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x31e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "xdp"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.adobe.xdp+xml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x31f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "xdw"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.fujixerox.docuworks"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x320

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "xenc"

    aput-object v3, v2, v4

    const-string v3, "application/xenc+xml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x321

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "xer"

    aput-object v3, v2, v4

    const-string v3, "application/patch-ops-error+xml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x322

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "xfdf"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.adobe.xfdf"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x323

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "xfdl"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.xfdl"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x324

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "xht"

    aput-object v3, v2, v4

    const-string v3, "application/xhtml+xml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x325

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "xhtml"

    aput-object v3, v2, v4

    const-string v3, "application/xhtml+xml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x326

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "xhvml"

    aput-object v3, v2, v4

    const-string v3, "application/xv+xml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x327

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "xif"

    aput-object v3, v2, v4

    const-string v3, "image/vnd.xiff"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x328

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "xla"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-excel"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x329

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "xlam"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-excel.addin.macroenabled.12"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x32a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "xlb"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-excel"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x32b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "xlc"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-excel"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x32c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "xlm"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-excel"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x32d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "xls"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-excel"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x32e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "xlsb"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-excel.sheet.binary.macroenabled.12"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x32f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "xlsm"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-excel.sheet.macroenabled.12"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x330

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "xlsx"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x331

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "xlt"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-excel"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x332

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "xltm"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-excel.template.macroenabled.12"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x333

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "xltx"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.openxmlformats-officedocument.spreadsheetml.template"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x334

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "xlw"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-excel"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x335

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "xml"

    aput-object v3, v2, v4

    const-string v3, "application/xml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x336

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "xo"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.olpc-sugar"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x337

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "xof"

    aput-object v3, v2, v4

    const-string v3, "x-world/x-vrml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x338

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "xop"

    aput-object v3, v2, v4

    const-string v3, "application/xop+xml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x339

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "xpdl"

    aput-object v3, v2, v4

    const-string v3, "application/xml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x33a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "xpi"

    aput-object v3, v2, v4

    const-string v3, "application/x-xpinstall"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x33b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "xpm"

    aput-object v3, v2, v4

    const-string v3, "image/x-xpixmap"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x33c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "xpr"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.is-xpr"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x33d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "xps"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-xpsdocument"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x33e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "xpw"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.intercon.formnet"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x33f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "xpx"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.intercon.formnet"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x340

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "xsl"

    aput-object v3, v2, v4

    const-string v3, "application/xml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x341

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "xslt"

    aput-object v3, v2, v4

    const-string v3, "application/xslt+xml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x342

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "xsm"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.syncml+xml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x343

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "xspf"

    aput-object v3, v2, v4

    const-string v3, "application/xspf+xml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x344

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "xul"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.mozilla.xul+xml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x345

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "xvm"

    aput-object v3, v2, v4

    const-string v3, "application/xv+xml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x346

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "xvml"

    aput-object v3, v2, v4

    const-string v3, "application/xv+xml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x347

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "xwd"

    aput-object v3, v2, v4

    const-string v3, "image/x-xwindowdump"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x348

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "xyz"

    aput-object v3, v2, v4

    const-string v3, "chemical/x-xyz"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x349

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "z"

    aput-object v3, v2, v4

    const-string v3, "application/x-compress"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x34a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "zaz"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.zzazz.deck+xml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x34b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "zip"

    aput-object v3, v2, v4

    const-string v3, "application/zip"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x34c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "zir"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.zul"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x34d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "zirz"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.zul"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x34e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "zmm"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.handheld-entertainment+xml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lcom/fsck/k9/mail/internet/MimeUtility;->MIME_TYPE_BY_EXTENSION_MAP:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collectParts(Lcom/fsck/k9/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3
    .param p0, "part"    # Lcom/fsck/k9/mail/Part;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/mail/Part;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fsck/k9/mail/Part;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fsck/k9/mail/Part;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1169
    .local p1, "viewables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fsck/k9/mail/Part;>;"
    .local p2, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fsck/k9/mail/Part;>;"
    :goto_0
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v2

    instance-of v2, v2, Lcom/fsck/k9/mail/Multipart;

    if-eqz v2, :cond_0

    .line 1171
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/Multipart;

    .line 1172
    .local v1, "mp":Lcom/fsck/k9/mail/Multipart;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v1}, Lcom/fsck/k9/mail/Multipart;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1174
    invoke-virtual {v1, v0}, Lcom/fsck/k9/mail/Multipart;->getBodyPart(I)Lcom/fsck/k9/mail/BodyPart;

    move-result-object v2

    invoke-static {v2, p1, p2}, Lcom/fsck/k9/mail/internet/MimeUtility;->collectParts(Lcom/fsck/k9/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1172
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1181
    .end local v0    # "i":I
    .end local v1    # "mp":Lcom/fsck/k9/mail/Multipart;
    :cond_0
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v2

    instance-of v2, v2, Lcom/fsck/k9/mail/Message;

    if-eqz v2, :cond_1

    .line 1183
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object p0

    .end local p0    # "part":Lcom/fsck/k9/mail/Part;
    check-cast p0, Lcom/fsck/k9/mail/Message;

    .line 1184
    .restart local p0    # "part":Lcom/fsck/k9/mail/Part;
    goto :goto_0

    .line 1185
    :cond_1
    invoke-static {p0}, Lcom/fsck/k9/mail/internet/MimeUtility;->isPartTextualBody(Lcom/fsck/k9/mail/Part;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1192
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1199
    :cond_2
    :goto_2
    return-void

    .line 1196
    :cond_3
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 896
    if-nez p0, :cond_0

    .line 898
    const/4 v0, 0x0

    .line 900
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeEncodedWords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static decodeBody(Ljava/io/InputStream;Ljava/lang/String;)Lcom/fsck/k9/mail/Body;
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "contentTransferEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1130
    if-eqz p1, :cond_0

    .line 1132
    const/4 v3, 0x0

    invoke-static {p1, v3}, Lcom/fsck/k9/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1134
    const-string v3, "quoted-printable"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1136
    new-instance v0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;

    invoke-direct {v0, p0}, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p0    # "in":Ljava/io/InputStream;
    .local v0, "in":Ljava/io/InputStream;
    move-object p0, v0

    .line 1144
    .end local v0    # "in":Ljava/io/InputStream;
    .restart local p0    # "in":Ljava/io/InputStream;
    :cond_0
    :goto_0
    new-instance v2, Lcom/fsck/k9/mail/internet/BinaryTempFileBody;

    invoke-direct {v2}, Lcom/fsck/k9/mail/internet/BinaryTempFileBody;-><init>()V

    .line 1145
    .local v2, "tempBody":Lcom/fsck/k9/mail/internet/BinaryTempFileBody;
    invoke-virtual {v2}, Lcom/fsck/k9/mail/internet/BinaryTempFileBody;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 1146
    .local v1, "out":Ljava/io/OutputStream;
    invoke-static {p0, v1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 1147
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 1148
    return-object v2

    .line 1138
    .end local v1    # "out":Ljava/io/OutputStream;
    .end local v2    # "tempBody":Lcom/fsck/k9/mail/internet/BinaryTempFileBody;
    :cond_1
    const-string v3, "base64"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1140
    new-instance v0, Lorg/apache/james/mime4j/decoder/Base64InputStream;

    invoke-direct {v0, p0}, Lorg/apache/james/mime4j/decoder/Base64InputStream;-><init>(Ljava/io/InputStream;)V

    .end local p0    # "in":Ljava/io/InputStream;
    .restart local v0    # "in":Ljava/io/InputStream;
    move-object p0, v0

    .end local v0    # "in":Ljava/io/InputStream;
    .restart local p0    # "in":Ljava/io/InputStream;
    goto :goto_0
.end method

.method public static findFirstPartByMimeType(Lcom/fsck/k9/mail/Part;Ljava/lang/String;)Lcom/fsck/k9/mail/Part;
    .locals 5
    .param p0, "part"    # Lcom/fsck/k9/mail/Part;
    .param p1, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 958
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v4

    instance-of v4, v4, Lcom/fsck/k9/mail/Multipart;

    if-eqz v4, :cond_1

    .line 960
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/mail/Multipart;

    .line 961
    .local v2, "multipart":Lcom/fsck/k9/mail/Multipart;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v2}, Lcom/fsck/k9/mail/Multipart;->getCount()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 963
    invoke-virtual {v2, v1}, Lcom/fsck/k9/mail/Multipart;->getBodyPart(I)Lcom/fsck/k9/mail/BodyPart;

    move-result-object v4

    .line 964
    invoke-static {v4, p1}, Lcom/fsck/k9/mail/internet/MimeUtility;->findFirstPartByMimeType(Lcom/fsck/k9/mail/Part;Ljava/lang/String;)Lcom/fsck/k9/mail/Part;

    move-result-object v3

    .line 965
    .local v3, "ret":Lcom/fsck/k9/mail/Part;
    if-eqz v3, :cond_0

    .line 975
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "multipart":Lcom/fsck/k9/mail/Multipart;
    .end local v3    # "ret":Lcom/fsck/k9/mail/Part;
    :goto_1
    return-object v3

    .line 961
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    .restart local v2    # "multipart":Lcom/fsck/k9/mail/Multipart;
    .restart local v3    # "ret":Lcom/fsck/k9/mail/Part;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 971
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "multipart":Lcom/fsck/k9/mail/Multipart;
    .end local v3    # "ret":Lcom/fsck/k9/mail/Part;
    :cond_1
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v3, p0

    .line 973
    goto :goto_1

    .line 975
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static findPartByContentId(Lcom/fsck/k9/mail/Part;Ljava/lang/String;)Lcom/fsck/k9/mail/Part;
    .locals 9
    .param p0, "part"    # Lcom/fsck/k9/mail/Part;
    .param p1, "contentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 980
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v8

    instance-of v8, v8, Lcom/fsck/k9/mail/Multipart;

    if-eqz v8, :cond_1

    .line 982
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v6

    check-cast v6, Lcom/fsck/k9/mail/Multipart;

    .line 983
    .local v6, "multipart":Lcom/fsck/k9/mail/Multipart;
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {v6}, Lcom/fsck/k9/mail/Multipart;->getCount()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 985
    invoke-virtual {v6, v3}, Lcom/fsck/k9/mail/Multipart;->getBodyPart(I)Lcom/fsck/k9/mail/BodyPart;

    move-result-object v8

    .line 986
    invoke-static {v8, p1}, Lcom/fsck/k9/mail/internet/MimeUtility;->findPartByContentId(Lcom/fsck/k9/mail/Part;Ljava/lang/String;)Lcom/fsck/k9/mail/Part;

    move-result-object v7

    .line 987
    .local v7, "ret":Lcom/fsck/k9/mail/Part;
    if-eqz v7, :cond_0

    .line 1004
    .end local v1    # "count":I
    .end local v3    # "i":I
    .end local v6    # "multipart":Lcom/fsck/k9/mail/Multipart;
    .end local v7    # "ret":Lcom/fsck/k9/mail/Part;
    :goto_1
    return-object v7

    .line 983
    .restart local v1    # "count":I
    .restart local v3    # "i":I
    .restart local v6    # "multipart":Lcom/fsck/k9/mail/Multipart;
    .restart local v7    # "ret":Lcom/fsck/k9/mail/Part;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 993
    .end local v1    # "count":I
    .end local v3    # "i":I
    .end local v6    # "multipart":Lcom/fsck/k9/mail/Multipart;
    .end local v7    # "ret":Lcom/fsck/k9/mail/Part;
    :cond_1
    const-string v8, "Content-ID"

    invoke-interface {p0, v8}, Lcom/fsck/k9/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 994
    .local v2, "header":[Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 996
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v2

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_2
    if-ge v4, v5, :cond_3

    aget-object v8, v0, v4

    .line 998
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v7, p0

    .line 1000
    goto :goto_1

    .line 996
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1004
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_3
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private static fixupCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "charset"    # Ljava/lang/String;

    .prologue
    .line 1271
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 1272
    const-string v0, "cp932"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1273
    const-string p0, "shift-jis"

    .line 1277
    .end local p0    # "charset":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 1274
    .restart local p0    # "charset":Ljava/lang/String;
    :cond_1
    const-string v0, "koi8-u"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1275
    const-string p0, "koi8-r"

    goto :goto_0
.end method

.method public static foldAndEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 911
    return-object p0
.end method

.method public static getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "header"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x1

    .line 927
    if-nez p0, :cond_1

    .line 952
    :cond_0
    :goto_0
    return-object v3

    .line 931
    :cond_1
    const-string v6, "\r|\n"

    const-string v7, ""

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 932
    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 933
    .local v5, "parts":[Ljava/lang/String;
    if-nez p1, :cond_2

    .line 935
    const/4 v6, 0x0

    aget-object v3, v5, v6

    goto :goto_0

    .line 937
    :cond_2
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v5

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 939
    .local v4, "part":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 941
    const-string v6, "="

    const/4 v7, 0x2

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v8

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 942
    .local v3, "parameter":Ljava/lang/String;
    const-string v6, "\""

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "\""

    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 944
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 937
    .end local v3    # "parameter":Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static getMimeTypeByExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x2e

    .line 1242
    const/4 v5, 0x0

    .line 1243
    .local v5, "returnedType":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1245
    .local v2, "extension":Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-virtual {p0, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 1247
    invoke-virtual {p0, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 1248
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1250
    :cond_0
    if-eqz v5, :cond_1

    .line 1265
    .end local v5    # "returnedType":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 1254
    .restart local v5    # "returnedType":Ljava/lang/String;
    :cond_1
    if-eqz v2, :cond_3

    .line 1256
    sget-object v0, Lcom/fsck/k9/mail/internet/MimeUtility;->MIME_TYPE_BY_EXTENSION_MAP:[[Ljava/lang/String;

    .local v0, "arr$":[[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v1, v0, v3

    .line 1258
    .local v1, "contentTypeMapEntry":[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v6, v1, v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1260
    const/4 v6, 0x1

    aget-object v5, v1, v6

    goto :goto_0

    .line 1256
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1265
    .end local v0    # "arr$":[[Ljava/lang/String;
    .end local v1    # "contentTypeMapEntry":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_3
    const-string v5, "application/octet-stream"

    goto :goto_0
.end method

.method public static getTextFromPart(Lcom/fsck/k9/mail/Part;)Ljava/lang/String;
    .locals 12
    .param p0, "part"    # Lcom/fsck/k9/mail/Part;

    .prologue
    .line 1018
    if-eqz p0, :cond_2

    :try_start_0
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 1020
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v0

    .line 1021
    .local v0, "body":Lcom/fsck/k9/mail/Body;
    instance-of v9, v0, Lcom/fsck/k9/mail/internet/TextBody;

    if-eqz v9, :cond_0

    .line 1023
    check-cast v0, Lcom/fsck/k9/mail/internet/TextBody;

    .end local v0    # "body":Lcom/fsck/k9/mail/Body;
    invoke-virtual {v0}, Lcom/fsck/k9/mail/internet/TextBody;->getText()Ljava/lang/String;

    move-result-object v8

    .line 1086
    :goto_0
    return-object v8

    .line 1026
    .restart local v0    # "body":Lcom/fsck/k9/mail/Body;
    :cond_0
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v4

    .line 1027
    .local v4, "mimeType":Ljava/lang/String;
    if-eqz v4, :cond_2

    const-string v9, "text/*"

    invoke-static {v4, v9}, Lcom/fsck/k9/mail/internet/MimeUtility;->mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1032
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v9

    const-string v10, "charset"

    invoke-static {v9, v10}, Lcom/fsck/k9/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1033
    .local v6, "originalCharset":Ljava/lang/String;
    const-string v1, "ASCII"

    .line 1034
    .local v1, "charset":Ljava/lang/String;
    if-eqz v6, :cond_1

    const-string v9, "0"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1040
    invoke-static {v6}, Lcom/fsck/k9/mail/internet/MimeUtility;->fixupCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    .line 1042
    if-nez v1, :cond_1

    .line 1044
    const-string v9, "k9"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "I don\'t know how to deal with the charset "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ". Falling back to US-ASCII"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    const-string v1, "US-ASCII"

    .line 1053
    :cond_1
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v9

    invoke-interface {v9}, Lcom/fsck/k9/mail/Body;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 1054
    .local v3, "in":Ljava/io/InputStream;
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v9

    invoke-direct {v7, v9}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1055
    .local v7, "out":Ljava/io/ByteArrayOutputStream;
    invoke-static {v3, v7}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 1056
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 1057
    invoke-virtual {v7, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1064
    .local v8, "result":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1070
    .end local v0    # "body":Lcom/fsck/k9/mail/Body;
    .end local v1    # "charset":Ljava/lang/String;
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v4    # "mimeType":Ljava/lang/String;
    .end local v6    # "originalCharset":Ljava/lang/String;
    .end local v7    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "result":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 1076
    .local v5, "oom":Ljava/lang/OutOfMemoryError;
    const-string v9, "k9"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Unable to getTextFromPart "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    .end local v5    # "oom":Ljava/lang/OutOfMemoryError;
    :cond_2
    :goto_1
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1078
    :catch_1
    move-exception v2

    .line 1084
    .local v2, "e":Ljava/lang/Exception;
    const-string v9, "k9"

    const-string v10, "Unable to getTextFromPart"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static isPartTextualBody(Lcom/fsck/k9/mail/Part;)Ljava/lang/Boolean;
    .locals 8
    .param p0, "part"    # Lcom/fsck/k9/mail/Part;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1204
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getDisposition()Ljava/lang/String;

    move-result-object v1

    .line 1205
    .local v1, "disposition":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1206
    .local v3, "dispositionType":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1207
    .local v2, "dispositionFilename":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1209
    const/4 v6, 0x0

    invoke-static {v1, v6}, Lcom/fsck/k9/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1210
    const-string v6, "filename"

    invoke-static {v1, v6}, Lcom/fsck/k9/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1216
    :cond_0
    const-string v6, "attachment"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    move v0, v5

    .line 1218
    .local v0, "attachment":Z
    :goto_0
    if-nez v0, :cond_3

    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "text/html"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1220
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 1235
    :goto_1
    return-object v4

    .end local v0    # "attachment":Z
    :cond_2
    move v0, v4

    .line 1216
    goto :goto_0

    .line 1226
    .restart local v0    # "attachment":Z
    :cond_3
    if-nez v0, :cond_4

    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "text/plain"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1228
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_1

    .line 1235
    :cond_4
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_1
.end method

.method public static mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "matchAgainst"    # Ljava/lang/String;

    .prologue
    .line 1098
    const-string v0, "\\*"

    const-string v1, "\\.\\*"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1099
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public static mimeTypeMatches(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "matchAgainst"    # [Ljava/lang/String;

    .prologue
    .line 1111
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, p1

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 1113
    .local v3, "matchType":Ljava/lang/String;
    invoke-static {p0, v3}, Lcom/fsck/k9/mail/internet/MimeUtility;->mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1115
    const/4 v4, 0x1

    .line 1118
    .end local v3    # "matchType":Ljava/lang/String;
    :goto_1
    return v4

    .line 1111
    .restart local v3    # "matchType":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1118
    .end local v3    # "matchType":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static unfold(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 887
    if-nez p0, :cond_0

    .line 889
    const/4 v0, 0x0

    .line 891
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "\r|\n"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 905
    invoke-static {p0}, Lcom/fsck/k9/mail/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/mail/internet/MimeUtility;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
