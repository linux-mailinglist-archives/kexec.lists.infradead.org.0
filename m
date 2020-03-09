Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B90617E530
	for <lists+kexec@lfdr.de>; Mon,  9 Mar 2020 17:59:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3FXUI5WyKPN5/MsoIBF9nupBnqAHBRa4L9bzAH3xOi4=; b=h3sL2lYnZDyF8t
	KE9l/QE64j8tFkPP8Nb3erWRMKh/Tk8RvacxlqHGEj4tha1YK9s7aXivV7vnloFFUYDYQru4GMk75
	NJOjIvnDL/KvZOHKC/r8y7EcDo9ppjvbpgyFMRfBpzXRAsVHz7SqyEhPuC6g+IJCWRFMQrmWkx8i0
	H0I5Ce/He3QYMKZNQPvBSz7OxcY6hi7iSj+BFdPyidd4x0cfb9r3tRqZ9o0ghyJj1YHEcTjNmQnJj
	DPBZX4GEgw8tozt309bfoCAE/FhBaCzWJhOBtOU94mQV7K2cidTHMVgongbiWHo6NCGxkACiluvOj
	WUQUi9eYt8P7ckvcrFmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBLk4-0002mf-Oc; Mon, 09 Mar 2020 16:59:00 +0000
Received: from mail-eopbgr1300052.outbound.protection.outlook.com
 ([40.107.130.52] helo=APC01-HK2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBLk0-0002lU-Hz
 for kexec@lists.infradead.org; Mon, 09 Mar 2020 16:58:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YSWK8jcgGU4/OHyVEXdiSUYe3CQDsgFFeEL8s9IflA6iuras8rg5e0uXvjKRO6fUncYpt3w/ZO+rDmcorP2muX5X8XSCHd3qB2qHFlCXfQrTvM2GUH/kB8C6QlnESxq8R4erQplk1VIfNeN2FoKOejp4ow3DxQ124x8FzCbcEelnxkH4okQm74EmWr+rsiB/HAsik0Vv36zsCCkusvy8xVm81N54g8n4VIgaEikh3iSsRggoXFOkhZ52xxz5RdTe3YvOXPrP0KwmYObXhbGXHumQI1fZNecvNRFlDRQq3hKoQakBLQDE5tOk8/pEAFBVbNDor6K67TEV5Omvhgqzcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7KXptR8FkcxD1a7Pym93sv1bN9CHCWXclwi7teum46A=;
 b=ZcWlZpA3K7LA1yPiYZJaWbbJhtFAUu4C0KDMDsIyjExoSFNjEx27KdXRoaQmdvU0JDor2qVmv0TVxrGwBTZ6ejGifmXY74LJSDUsKj0GrihKeVd5ikSVnGE1g6a+aWVn7LrMXo32Km8TQoOVtBJ3eWbajN+IueCaSZNBhQjPc+iUf07OUxSJBVMJmCsz7LaGDeazPwCvONDMrUCE+4QPauwM8AOZSpL2dcBLFZhQ+YVpsgIV73HAHTJHtQRovKERVSGXSS+jI/c82jvB4THXOq1e6SbRLgqEpTwd+N7KH2GUf5Q/jgDo+WeuBUZJYBUWnxRH3n7WeOrjVQyj9qgXdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nec.com; dmarc=pass action=none header.from=nec.com; dkim=pass
 header.d=nec.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=necglobal.onmicrosoft.com; s=selector1-necglobal-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7KXptR8FkcxD1a7Pym93sv1bN9CHCWXclwi7teum46A=;
 b=A+JJd/VRaaGfHr2FS0yuaeSvPDThWef9tB05efDWuYiFnKdzK+wEhDN3xXH81VY7JRWhdv0E8WXpI/I+Fl9EGVycfSNOexfc5c2AVpVIdLj+0e8SQod0KPglpCGkQwUFI2j5GmxeXpuzoopr+OCokLFuY766zouDskgcw/27YS0=
Received: from TY2PR01MB5210.jpnprd01.prod.outlook.com (20.179.171.214) by
 TY2PR01MB2924.jpnprd01.prod.outlook.com (20.177.98.81) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.15; Mon, 9 Mar 2020 16:58:48 +0000
Received: from TY2PR01MB5210.jpnprd01.prod.outlook.com
 ([fe80::fc05:2d27:4484:40c9]) by TY2PR01MB5210.jpnprd01.prod.outlook.com
 ([fe80::fc05:2d27:4484:40c9%5]) with mapi id 15.20.2793.013; Mon, 9 Mar 2020
 16:58:48 +0000
From: =?iso-2022-jp?B?SEFHSU8gS0FaVUhJVE8oGyRCR2tIeCEhMGw/ThsoQik=?=
 <k-hagio-ab@nec.com>
To: Prabhakar Kushwaha <prabhakar.pkin@gmail.com>, kexec mailing list
 <kexec@lists.infradead.org>, Bhupesh Sharma <bhsharma@redhat.com>, Ganapatrao
 Prabhakerrao Kulkarni <gkulkarni@marvell.com>, Kamlakant Patel
 <kamlakantp@marvell.com>, Prabhakar Kushwaha <pkushwaha@marvell.com>
Subject: RE: makedumpfile: undefined reference for lzma function during build
Thread-Topic: makedumpfile: undefined reference for lzma function during build
Thread-Index: AQHV9hv+e9fSbsU2f0qg44IUXLB3GahAb0lA
Date: Mon, 9 Mar 2020 16:58:48 +0000
Message-ID: <TY2PR01MB52101D28462041E10151C4C3DDFE0@TY2PR01MB5210.jpnprd01.prod.outlook.com>
References: <CAJ2QiJKqZbi7V9nd+=NFUnKBhTBqqbm=-pkuLQ0P3s=1hLgOmQ@mail.gmail.com>
In-Reply-To: <CAJ2QiJKqZbi7V9nd+=NFUnKBhTBqqbm=-pkuLQ0P3s=1hLgOmQ@mail.gmail.com>
Accept-Language: ja-JP, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=k-hagio-ab@nec.com; 
x-originating-ip: [66.187.233.206]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f099c17b-c027-4203-ffa7-08d7c44b22ca
x-ms-traffictypediagnostic: TY2PR01MB2924:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <TY2PR01MB2924424949D61DB361E94E28DDFE0@TY2PR01MB2924.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3276;
x-forefront-prvs: 0337AFFE9A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(396003)(39860400002)(136003)(346002)(376002)(199004)(189003)(110136005)(52536014)(64756008)(71200400001)(66446008)(33656002)(66556008)(76116006)(81156014)(966005)(66476007)(186003)(478600001)(66946007)(85182001)(2906002)(81166006)(26005)(5660300002)(8676002)(86362001)(55016002)(316002)(6506007)(9686003)(7696005)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:TY2PR01MB2924;
 H:TY2PR01MB5210.jpnprd01.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nec.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +zeb53bqmF6O7rFZjDX3FDR7wk55klWkwCTq0tp3JNxvmXUR6mPxNfm4OOHXF2hcPxjyplFV6swmEnZGF6Ci0LIXgflOf/AMk+SD9PR9pF8j0NKD3IrkjtG4SOjspbFUOsCtyMjcaFXwNxgxD1BQPJo8fOP2QplwvslO8goLwelGSLTsO+AcQPzUTM4LodF6y/vlPtr226H/21JGXbRXYfGLC01s015dJmQahWlEy7I8VUnrr0q2hPsPIbcnqXn3kfDR9pFmCHViaYiRqskQ+40skCIEIxFb7lRilDUoh5hjW3lmaNb7DbdYgKum2NMxifMgxF+MFvHxgjXaIxGKnB4krj8KYefzepNBNZnAMp0Hxipr0ZkEDZVGQhYwEllPCXp8yHJyo6uI5xTm1cMN+u9bgqGYQhX8pWpKO/x/+DeuUiBMquT/QcKsh+rEp4jkJlZkAv/WaUxRPK/X30JB59WNYMFE8bVVDCW+lCkutC1tGmMMHFWiMUGN6M4li3PwhATIBExIgc+6l7yHX2776g==
x-ms-exchange-antispam-messagedata: k5k8e+Ia4HJgJg8sLAsjQ/392jGdC3rVHA4isDKL+m9/XeYEys6rFmRUKRUsAozR7GSpcCDlrQUgwI03pCQjZmO3NyPBiHYBOmlMT31vsLNPOrRLi4g6OGH20KGmcxlTvDs+UfVYzzI8Dw3vILcA3Q==
MIME-Version: 1.0
X-OriginatorOrg: nec.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f099c17b-c027-4203-ffa7-08d7c44b22ca
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Mar 2020 16:58:48.0355 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e67df547-9d0d-4f4d-9161-51c6ed1f7d11
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YxMr4YT/RXzqmN+OGmXQ2biwNCkzV/bYEIhFIFv/q2KKHhth9K5Cge1j0v29Hc7Eh6Zjd/AOK4OFtBR8LXiJ7w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY2PR01MB2924
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_095856_660254_29295EE8 
X-CRM114-Status: GOOD (  11.82  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.130.52 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: kexec@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <kexec.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/kexec/>
List-Post: <mailto:kexec@lists.infradead.org>
List-Help: <mailto:kexec-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Prabhakar,

Thank you for reporting this.

-----Original Message-----
> Hi All,
> 
> While building makedumpfile for AARM64 Thunder X2, I am getting this error
> 
> cc  -g -O2 -Wall -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE
> -D_LARGEFILE64_SOURCE -DVERSION='"1.6.7"' -DRELEASE_DATE='"16 Jan
> 2020"' -D__aarch64__   print_info.o dwarf_info.o elf_info.o
> erase_info.o sadump_info.o cache.o tools.o arch/arm.o arch/arm64.o
> arch/x86.o arch/x86_64.o arch/ia64.o arch/ppc64.o arch/s390x.o
> arch/ppc.o arch/sparc64.o -rdynamic -o makedumpfile makedumpfile.c
> -lpthread -static -ldw -lbz2 -ldl -lelf -lz  -lebl
> erase_info.o: In function `process_eppic_file':
> /home/prabhakar/MERGE/OPENSRC/APPL/makedumpfile-code/erase_info.c:2202:
> warning: Using 'dlopen' in statically linked applications requires at
> runtime the shared libraries from the glibc version used for linking
> //usr/local/lib/libdw.a(lzma.o): In function `__libdw_unlzma':
> /home/prabhakar/MERGE/OPENSRC/APPL/elfutils-0.177/libdwfl/gzip.c:233:
> undefined reference to `lzma_auto_decoder'
> /home/prabhakar/MERGE/OPENSRC/APPL/elfutils-0.177/libdwfl/gzip.c:248:
> undefined reference to `lzma_end'
> /home/prabhakar/MERGE/OPENSRC/APPL/elfutils-0.177/libdwfl/gzip.c:267:
> undefined reference to `lzma_code'
> /home/prabhakar/MERGE/OPENSRC/APPL/elfutils-0.177/libdwfl/gzip.c:277:
> undefined reference to `lzma_end'
> /home/prabhakar/MERGE/OPENSRC/APPL/elfutils-0.177/libdwfl/gzip.c:236:
> undefined reference to `lzma_end'
> /home/prabhakar/MERGE/OPENSRC/APPL/elfutils-0.177/libdwfl/gzip.c:277:
> undefined reference to `lzma_end'
> /home/prabhakar/MERGE/OPENSRC/APPL/elfutils-0.177/libdwfl/gzip.c:277:
> undefined reference to `lzma_end'
> collect2: error: ld returned 1 exit status
> Makefile:100: recipe for target 'makedumpfile' failed
> 
> Source code: https://git.code.sf.net/p/makedumpfile/code
> Top commit e7301654029330bbf49693002fa72223f9b3fb36 (HEAD -> master,
> tag: Released-1-6-7, origin/master, origin/HEAD)
> Author: Kazuhito Hagio <k-hagio-ab@nec.com>
> Date:   Wed Jan 15 13:09:56 2020 -0500
> 
>     [v1.6.7] Update version
> 
>     Update makedumpfile to version 1.6.7.
> 
>     Signed-off-by: Kazuhito Hagio <k-hagio-ab@nec.com>
> 
> 
> I googled and found
> http://lists.infradead.org/pipermail/kexec/2017-May/018760.html i.e.
> diff --git a/Makefile b/Makefile
> index 388faf7..810a7a0 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -50,7 +50,7 @@ OBJ_PART=$(patsubst %.c,%.o,$(SRC_PART))
>  SRC_ARCH = arch/arm.c arch/arm64.c arch/x86.c arch/x86_64.c
> arch/ia64.c arch/ppc64.c arch/s390x.c arch/ppc.c arch/sparc64.c
>  OBJ_ARCH=$(patsubst %.c,%.o,$(SRC_ARCH))
> 
> -LIBS = -ldw -lbz2 -ldl -lelf -lz
> +LIBS = -ldw -lbz2 -ldl -lelf -lz -llzma
>  ifneq ($(LINKTYPE), dynamic)
>  LIBS := -static $(LIBS)
>  endif
> 
> After adding this change, no more build error.This change was required
> for spac64. So do we need similar changes for AARM64 platform also.

I confirmed that it also occurred on x86_64 without LINKTYPE=dynamic.
The -ldw with -static option seems to require -llzma, and makedumpfile
doesn't use liblzma directly, so I will merge this:

diff --git a/Makefile b/Makefile
index 868eea6..ebef867 100644
--- a/Makefile
+++ b/Makefile
@@ -52,7 +52,7 @@ OBJ_ARCH=$(patsubst %.c,%.o,$(SRC_ARCH))

 LIBS = -ldw -lbz2 -ldl -lelf -lz
 ifneq ($(LINKTYPE), dynamic)
-LIBS := -static $(LIBS)
+LIBS := -static $(LIBS) -llzma
 endif

 ifeq ($(USELZO), on)


Thanks,
Kazu

> 
> --pk
> 
> _______________________________________________
> kexec mailing list
> kexec@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/kexec

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
