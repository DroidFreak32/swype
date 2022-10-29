.class public Lcom/nuance/connect/util/FileUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/util/FileUtils$CountingIterator;
    }
.end annotation


# static fields
.field public static final BUFFER_SIZE:I = 0x400


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertFileToList(Ljava/lang/String;Z)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->OEM:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "convertFileToList: "

    invoke-interface {v0, v1, p0}, Lcom/nuance/connect/util/Logger$Log;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_51

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_59

    const/4 v1, 0x0

    :try_start_1f
    new-instance v0, Ljava/util/Scanner;

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v0, v3, v4}, Ljava/util/Scanner;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_27} :catch_6e
    .catchall {:try_start_1f .. :try_end_27} :catchall_52

    :cond_27
    :goto_27
    :try_start_27
    invoke-virtual {v0}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v1

    if-eqz v1, :cond_66

    invoke-virtual {v0}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_66

    if-eqz p1, :cond_3b

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    :cond_3b
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3e
    .catch Ljava/io/FileNotFoundException; {:try_start_27 .. :try_end_3e} :catch_3f
    .catchall {:try_start_27 .. :try_end_3e} :catchall_69

    goto :goto_27

    :catch_3f
    move-exception v1

    :goto_40
    :try_start_40
    sget-object v1, Lcom/nuance/connect/util/Logger$LoggerType;->OEM:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v1

    const-string/jumbo v3, "Error Processing File: "

    invoke-interface {v1, v3, p0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4c
    .catchall {:try_start_40 .. :try_end_4c} :catchall_69

    if-eqz v0, :cond_51

    :goto_4e
    invoke-virtual {v0}, Ljava/util/Scanner;->close()V

    :cond_51
    :goto_51
    return-object v2

    :catchall_52
    move-exception v0

    :goto_53
    if-eqz v1, :cond_58

    invoke-virtual {v1}, Ljava/util/Scanner;->close()V

    :cond_58
    throw v0

    :cond_59
    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->OEM:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "Error(2) Processing File: "

    invoke-interface {v0, v1, p0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_51

    :cond_66
    if-eqz v0, :cond_51

    goto :goto_4e

    :catchall_69
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_53

    :catch_6e
    move-exception v0

    move-object v0, v1

    goto :goto_40
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    new-array v0, v0, [B

    :goto_4
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_10

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_4

    :cond_10
    return-void
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .registers 7

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_3
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1b

    :try_start_8
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_2e

    :try_start_d
    invoke-static {v2, v4}, Lcom/nuance/connect/util/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_32

    if-eqz v4, :cond_15

    :try_start_12
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    :cond_15
    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    :cond_1a
    :goto_1a
    return v0

    :catchall_1b
    move-exception v0

    move-object v2, v3

    :goto_1d
    if-eqz v3, :cond_22

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    :cond_22
    if-eqz v2, :cond_27

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    :cond_27
    throw v0
    :try_end_28
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_28} :catch_28
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_28} :catch_2b

    :catch_28
    move-exception v0

    move v0, v1

    goto :goto_1a

    :catch_2b
    move-exception v0

    move v0, v1

    goto :goto_1a

    :catchall_2e
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    goto :goto_1d

    :catchall_32
    move-exception v0

    move-object v3, v4

    goto :goto_1d
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/nuance/connect/util/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static deleteFile(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_27

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_27

    :try_start_a
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_27

    sget-object v3, Lcom/nuance/connect/util/Logger$LoggerType;->OEM:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v3}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v3

    const-string/jumbo v4, "Unable to delete file: "

    invoke-interface {v3, v4, p0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_24} :catch_2a

    move-result v2

    if-nez v2, :cond_28

    :cond_27
    :goto_27
    return v0

    :cond_28
    move v0, v1

    goto :goto_27

    :catch_2a
    move-exception v0

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->OEM:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v2, "Unable to delete file: "

    invoke-interface {v0, v2, p0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    move v0, v1

    goto :goto_27
.end method

.method public static getNumberOfLines(Ljava/io/File;)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide v6, 0x7fffffffffffffffL

    const/4 v2, 0x0

    :try_start_6
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v1, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v1, Ljava/io/LineNumberReader;

    invoke-direct {v1, v0}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_40

    const-wide v2, 0x7fffffffffffffffL

    :try_start_22
    invoke-virtual {v1, v2, v3}, Ljava/io/LineNumberReader;->skip(J)J

    move-result-wide v2

    cmp-long v0, v2, v6

    if-nez v0, :cond_36

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->OEM:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v2, "warning: getNumberOfLines may be reporting incorrect value due to file size."

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->w(Ljava/lang/Object;)V

    :cond_36
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->getLineNumber()I
    :try_end_39
    .catchall {:try_start_22 .. :try_end_39} :catchall_48

    move-result v0

    if-eqz v1, :cond_3f

    invoke-virtual {v1}, Ljava/io/LineNumberReader;->close()V

    :cond_3f
    return v0

    :catchall_40
    move-exception v0

    move-object v1, v2

    :goto_42
    if-eqz v1, :cond_47

    invoke-virtual {v1}, Ljava/io/LineNumberReader;->close()V

    :cond_47
    throw v0

    :catchall_48
    move-exception v0

    goto :goto_42
.end method

.method public static persistListToFile(Ljava/util/List;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_e

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1b

    :cond_e
    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "Nothing to save: "

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    :try_start_1b
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_20
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_20} :catch_aa
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1b .. :try_end_20} :catch_5d
    .catchall {:try_start_1b .. :try_end_20} :catchall_76

    :try_start_20
    new-instance v2, Ljava/io/PrintWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v3, v1, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2d
    .catch Ljava/io/FileNotFoundException; {:try_start_20 .. :try_end_2d} :catch_ad
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_20 .. :try_end_2d} :catch_a5
    .catchall {:try_start_20 .. :try_end_2d} :catchall_93

    :try_start_2d
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_88

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/io/FileNotFoundException; {:try_start_2d .. :try_end_40} :catch_41
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2d .. :try_end_40} :catch_a7
    .catchall {:try_start_2d .. :try_end_40} :catchall_98

    goto :goto_31

    :catch_41
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    :goto_44
    :try_start_44
    sget-object v2, Lcom/nuance/connect/util/Logger$LoggerType;->OEM:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v2}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v2

    const-string/jumbo v3, "Could not persist to file: "

    invoke-interface {v2, v3, p1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_50
    .catchall {:try_start_44 .. :try_end_50} :catchall_9a

    if-eqz v1, :cond_55

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    :cond_55
    if-eqz v0, :cond_1a

    :try_start_57
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_5b

    goto :goto_1a

    :catch_5b
    move-exception v0

    goto :goto_1a

    :catch_5d
    move-exception v1

    move-object v1, v0

    :goto_5f
    :try_start_5f
    sget-object v2, Lcom/nuance/connect/util/Logger$LoggerType;->OEM:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v2}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v2

    const-string/jumbo v3, "Encoding error in persist to file: "

    invoke-interface {v2, v3, p1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_6b
    .catchall {:try_start_5f .. :try_end_6b} :catchall_a0

    if-eqz v0, :cond_70

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_70
    if-eqz v1, :cond_1a

    :try_start_72
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_75} :catch_5b

    goto :goto_1a

    :catchall_76
    move-exception v1

    move-object v2, v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_7b
    if-eqz v2, :cond_80

    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    :cond_80
    if-eqz v1, :cond_85

    :try_start_82
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_85} :catch_86

    :cond_85
    :goto_85
    throw v0

    :catch_86
    move-exception v1

    goto :goto_85

    :cond_88
    if-eqz v2, :cond_8d

    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    :cond_8d
    if-eqz v1, :cond_1a

    :try_start_8f
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_92} :catch_5b

    goto :goto_1a

    :catchall_93
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_7b

    :catchall_98
    move-exception v0

    goto :goto_7b

    :catchall_9a
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_7b

    :catchall_a0
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_7b

    :catch_a5
    move-exception v2

    goto :goto_5f

    :catch_a7
    move-exception v0

    move-object v0, v2

    goto :goto_5f

    :catch_aa
    move-exception v1

    move-object v1, v0

    goto :goto_44

    :catch_ad
    move-exception v2

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_44
.end method

.method public static streamFile(Ljava/lang/String;Z)Lcom/nuance/connect/util/FileUtils$CountingIterator;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/nuance/connect/util/FileUtils$CountingIterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->OEM:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "streamFile: "

    invoke-interface {v0, v1, p0}, Lcom/nuance/connect/util/Logger$Log;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p0, :cond_2b

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_2d

    :try_start_19
    new-instance v1, Ljava/util/Scanner;

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/util/Scanner;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Lcom/nuance/connect/util/FileUtils$1;

    invoke-direct {v0, v1, p1, p0}, Lcom/nuance/connect/util/FileUtils$1;-><init>(Ljava/util/Scanner;ZLjava/lang/String;)V
    :try_end_26
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_26} :catch_27

    :goto_26
    return-object v0

    :catch_27
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_2b
    :goto_2b
    const/4 v0, 0x0

    goto :goto_26

    :cond_2d
    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->OEM:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "Error(2) streamFile: "

    invoke-interface {v0, v1, p0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2b
.end method
