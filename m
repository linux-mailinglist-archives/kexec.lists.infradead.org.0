Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B445DD3619
	for <lists+kexec@lfdr.de>; Fri, 11 Oct 2019 02:36:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Vwa167wR0RjTA6YbVi96C2/0iKbfM4HW1M/dm1gbsrg=; b=ozZ
	ItnPeSA/1Gd2/ByydyYK41PQVbxrN1XA6CrICaS12+FfrjbBxeZfXnTEf9l0KdFUkgnLRYb6F2A2V
	rLro4G/qWmGXJKhRyNH8+wShedFhvZ5JyWd5xsJiYUFNsVnSc5/UiVYIkeGxLt/Z3nXD4cTILKx63
	UyP7JxRMqDIuQeB/4XR5kvkT+Xl+4l35RO+QzFLkwGXFfp8oOUn5jBnem+wc3asCWa6sU7oc6MZS/
	2sWuO/bG4FyW97zVJsh4mcE/AhppG7pWLlkHjSLaKe9Fl11qFrLVAmWFu08JiI1iz/4cIgvRcFDaL
	IBsPK3mIzhmtUE04ptGox0lHQ0ugixA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIiuq-00047l-IB; Fri, 11 Oct 2019 00:36:20 +0000
Received: from linux.microsoft.com ([13.77.154.182])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIiuk-00046F-Qa; Fri, 11 Oct 2019 00:36:16 +0000
Received: from prsriva-Precision-Tower-5810.corp.microsoft.com (unknown
 [167.220.2.18])
 by linux.microsoft.com (Postfix) with ESMTPSA id 39C1A20B71C6;
 Thu, 10 Oct 2019 17:36:11 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com 39C1A20B71C6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
 s=default; t=1570754171;
 bh=ukcmDBet97YUwfB06z1X6qjWfd6vHXorhatSJhru044=;
 h=From:To:Cc:Subject:Date:From;
 b=m1napScZ4ejhrWf6KzEGBjvlNbBF/95rRL8k0jtO3VNiS2no/6OKXHlHMd4wuTKUh
 +rj4+fyBHROBw1CAsFkZyCSKE4qilA5IU6GHzGXMfeg66U9GENrGACYW3IRzOFNsIz
 jAw1AIqZQKmfWuW96UzBrUDn22B7C6ppg/+Bo/hQ=
From: Prakhar Srivastava <prsriva@linux.microsoft.com>
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-integrity@vger.kernel.org, kexec@lists.infradead.org
Subject: [PATCH V4 0/2] Add support for arm64 to carry ima measurement
Date: Thu, 10 Oct 2019 17:35:58 -0700
Message-Id: <20191011003600.22090-1-prsriva@linux.microsoft.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_173614_920474_BDB006FA 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: -15.6 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
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
Cc: mark.rutland@arm.com, jean-philippe@linaro.org, arnd@arndb.de,
 takahiro.akashi@linaro.org, sboyd@kernel.org, catalin.marinas@arm.com,
 zohar@linux.ibm.com, yamada.masahiro@socionext.com, kristina.martsenko@arm.org,
 duwe@lst.de, bauerman@linux.ibm.com, james.morse@arm.org, tglx@linutronix.de,
 allison@lohutok.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Add support to carry ima measurement log
to the next kexec'ed session triggered via kexec_file_load.
- Top of Linux 5.3-rc6

Currently during kexec the kernel file signatures are/can be validated
prior to actual load, the information(PE/ima signature) is not carried
to the next session. This lead to loss of information.

Carrying forward the ima measurement log to the next kexec'ed session 
allows a verifying party to get the entire runtime event log since the
last full reboot, since that is when PCRs were last reset.

Tested for arm64 qemu and real hardware.
I have not been unable to test the patch for powerpc 64bit. Any testing
is greatly appretiated.

TODO: Add support for 32 bit in the of_ima.c
v4:
  - Fix issue with HAVE_* config wrongly used.

v3:
  - Fix build breaks due to bad config.

v2:
  - move common code to drivers/of/of_ima.c.
  - point arm64 to use of_ima implementation.
  - point powerpc to use of_ima implementation

v1:
  - add new fdt porperties to mark start and end for ima measurement
    log.
  - use fdt_* functions to add/remove fdt properties and memory
    allocations.
  - remove additional check for endian-ness as they are checked
    in fdt_* functions.

v0:
  - Add support to carry ima measurement log in arm64, 
   uses same code as powerpc.

Prakhar Srivastava (2):
  Add support for arm64 to carry ima measurement log in kexec_file_load
  update powerpc implementation to call into of_ima*

 arch/arm64/Kconfig                     |   1 +
 arch/arm64/include/asm/ima.h           |  24 +++
 arch/arm64/include/asm/kexec.h         |   5 +
 arch/arm64/kernel/Makefile             |   1 +
 arch/arm64/kernel/ima_kexec.c          |  78 ++++++++++
 arch/arm64/kernel/machine_kexec_file.c |   6 +
 arch/powerpc/include/asm/ima.h         |   5 -
 arch/powerpc/kernel/Makefile           |   3 -
 arch/powerpc/kernel/ima_kexec.c        | 170 ++-------------------
 drivers/of/Kconfig                     |   6 +
 drivers/of/Makefile                    |   1 +
 drivers/of/of_ima.c                    | 204 +++++++++++++++++++++++++
 include/linux/of.h                     |  31 ++++
 13 files changed, 371 insertions(+), 164 deletions(-)
 create mode 100644 arch/arm64/include/asm/ima.h
 create mode 100644 arch/arm64/kernel/ima_kexec.c
 create mode 100644 drivers/of/of_ima.c

-- 
2.17.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
