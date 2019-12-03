Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA47010FBB6
	for <lists+kexec@lfdr.de>; Tue,  3 Dec 2019 11:27:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7PUZshwIvPegnt+ezqyz3jBOSJU0YxKtsgzuMVwTNpY=; b=F1hmPJ5LsTPK8A
	/WZ+HVLqbsXrf3bbSDko2o8O+xb0xm3IgEK4lL2TAQtzzXsCY2H6YuzV/TNXxoSuFkiMBRMeoimWN
	C5HzqfWca+SZuNK83o9eA/hq0Ei/g6VoX2XMl/wWK1SMN2np/RpOhWN6vy1df76L4LfcFWQObPjE4
	BcJzevrDKdM1apxqPmqy9Ln+3Haje+hV4v3BvOSCTV/aghqxG5ItCNIbf7mAwAkZbf6EVecbpLCd1
	8YYKs2mQUFLZONICoi/+rP8N3WNNX73pXtiZMe2kzOgjLJTBSwdUUoh3WQ3H8Z7fgVbQzkdGO2qhL
	8oNKl7sGgPNeqEx+iyRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic5PM-0004au-S4; Tue, 03 Dec 2019 10:27:52 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic5PJ-0004aP-RA
 for kexec@lists.infradead.org; Tue, 03 Dec 2019 10:27:51 +0000
Received: by mail-wm1-x32a.google.com with SMTP id g206so2381544wme.1
 for <kexec@lists.infradead.org>; Tue, 03 Dec 2019 02:27:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=VoIuD2RHKwOSFSi50PKiRY7gQH9Rd9RznaFDvaCqbH4=;
 b=r3wJBlOjuNNbsWIREb1Nguunwp44ysnci0ENTMhC9UWytqb1DVHeTca1+doYWB88/w
 /NWRNXziLXKwqdkBkO6a8W5m3mpoo23xvBnCiMIc6TWVNGgURfW841thUO+tomt9l8If
 BdDJIeKcpDM+y7kEfD7sTU7CmzrKNqXbKBWSWZyv09UGn1CslTShb1jWqaK2VNCdaab+
 pjd1dyHReiLbPlLVkDXbPRQbHx2Epm6uN3HJfmUq6CLwFBbs6TSsLzEiWF9JQZYUsuG1
 fpV1C0dyqgdhiGHphcVF44vWbLrdhDt44gMz+EY0PaN5mkw94ZZqDlQsDX2L8cvntBgS
 cUSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=VoIuD2RHKwOSFSi50PKiRY7gQH9Rd9RznaFDvaCqbH4=;
 b=Xco2j8aKhMtKoR3RrYxFkY3O+EcyjUScA3r0K2MP4SnF3KxBjchfQj8/3amr2EL9+n
 eCj+8QP2uDC+Ww0yCTIALL905lxiLEkwgnkHIBv7A87kdhvfXvB40rElvgKUi1enIkKJ
 XMZ236JuAXXteN+yUlQposvVEurFAZY+dzJNTXhjVhWPR/UwDkgNarsGr763TSSwkzSh
 ihre+n4rGFFuEb/MmJRufVYTkCm9KMN3Yam9jYL2T8EgOz3nMcZki/f7COX3BcZMKbbm
 aMD3kmY17zvJl0jfeRr47VBb9I6+1aMr2vSMpSqOc1y75xZB8WfJyIWoNKNChN3sN/zT
 9PgQ==
X-Gm-Message-State: APjAAAXDyiGGWIGJLGblVmDOguaQtqgs3MEOIyn/JYXZPIwxFrvGGmRo
 pCBsaFv3rh7fcwwVEXOlW7WTnq/071Hqt+xyWylUnGApOZn5vCEB
X-Google-Smtp-Source: APXvYqzFL3Ue/ityzzZ7FWOptUnU102+tPLwSeNLDrvfRDHehqdeflc0QpOfTlD6EGuUKne+ZrwLdwiTp/4euoz0pkE=
X-Received: by 2002:a7b:c389:: with SMTP id s9mr16226780wmj.7.1575368866758;
 Tue, 03 Dec 2019 02:27:46 -0800 (PST)
MIME-Version: 1.0
From: Khouloud Touil <ktouil@baylibre.com>
Date: Tue, 3 Dec 2019 11:27:36 +0100
Message-ID: <CALL1Z1xngzUT3bGQCargLDBSHvjZNWrgFuQOK2jpwoLLkvS+RQ@mail.gmail.com>
Subject: Using kexec for rpi-4-b
To: kexec@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_022749_879628_D2866649 
X-CRM114-Status: UNSURE (   5.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Corentin Labbe <clabbe@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hello,

I am trying to boot another kernel for rpi4, using a kexec tools,
The kernel booted already, is compiled with KEXEC=y,
using the official sources for rpi (4.19.86-v8+)
The rootfs generated with debootstarp for arch 64
The command I am trying to execute is:
kexec -l /boot/Image --dtb=/boot/bcm2711-rpi-4-b.dtb --ramdisk=/boot/rootfs.cpio
-- reuse-cmdline
this doesn't work and the logs are:
[    99.107018] Can't kexec: CPUs are stuck in the kernel.
kexec_load failed: Device or resource busy
entry      = 0x3d9d690 flags = 0xb70000
nr_segments = 4
segment[0].buf = 0x7f84316010
segment[0].bufsz = 0x1951a99
segment[0].mem = 0x80000
segment[0].memsz = 0x19ca000
segment[1].buf = 0x7f81fc9010
segment[1.bufsz = 0x234c800
segment[1].mem = 0x1a4a000
segment[1].memsz = 0x234d000
segment[2].buf = 0x5597abe9b0
segment[2].bufsz = 0x521b
segment[2].mem = 3d97000
segment[2].memsz = 0x6000
segment[3].buf = 0x5597ac4030
segment[3].bufsz = 0x3458
segment[3].mem = 0x3d9d000
segment[3].memsz =  0x4000

Could someone please help to figure out what's the problem ?

Regards,

Khouloud

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
