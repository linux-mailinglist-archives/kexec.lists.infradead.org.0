Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3616E0540
	for <lists+kexec@lfdr.de>; Tue, 22 Oct 2019 15:38:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=IXMB6B78uN+zgci2wpnAEBa01Y0lP7xGfm2EEoeYOhk=; b=YRRATPs403TxHWvKEs4ieaiaX7
	e/x1W+KX7IxoSmbX8Lc/8isTb/lKfKU9WB4aEqGxeShoKauXzjSG9zeN46lV3BU9lmwfrSLo9S3d8
	Xq+DmeXRxZ1YgCs0EFJHF8blPIF16PuPVzFzj/D2F2bx6POefjmgCHDieVBLOyi4tGYt5OK9uw6Iq
	aPOVdkTtx79dpJLZIAbjMAKyoCUllMLXHMK4Ghr7ZzO0o4pq/S9tTnSwYyvJDHOA5cWDRMaG0do/i
	QvhlNSHdSDPcLn1N7Yk14KxOtzjnsh4GLQP+wW2cPrEO1Hn/Cvz4+EDUOKtqPcu3IuXyN6MjMwOrV
	9O1lCSuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMuMW-0003ar-Ht; Tue, 22 Oct 2019 13:38:12 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMuMT-0003aF-Uy
 for kexec@lists.infradead.org; Tue, 22 Oct 2019 13:38:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1571751488;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ClLRvR3K2OxEGgJFiS03fCdmqAI7mh8NGSiPd6ht/ko=;
 b=gFvpw4BULIb/wsFYEG5/TNefbMo2RgNdxQi4GJRC95fzeGITIywuXOBpuZFw5aulJtG+6w
 rTW41N5NxHaRdd/tcOKUw0dIvCqyt/PBpooo3ngKCcTjFvtLlhGOx/cqfe8IoeECWHAK11
 bRvwkhAMeWQTBJeaEA6MQ/fHCqV4syY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-159-NoHoFbu0OrKpoT0WpTpGfQ-1; Tue, 22 Oct 2019 09:38:04 -0400
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 166AB107AD33
 for <kexec@lists.infradead.org>; Tue, 22 Oct 2019 13:38:04 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 0F54E4221
 for <kexec@lists.infradead.org>; Tue, 22 Oct 2019 13:38:04 +0000 (UTC)
Received: from zmail24.collab.prod.int.phx2.redhat.com
 (zmail24.collab.prod.int.phx2.redhat.com [10.5.83.30])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 061734EE50
 for <kexec@lists.infradead.org>; Tue, 22 Oct 2019 13:38:04 +0000 (UTC)
Date: Tue, 22 Oct 2019 09:38:03 -0400 (EDT)
From: Dave Anderson <anderson@redhat.com>
To: kexec@lists.infradead.org
Message-ID: <1711321633.7795678.1571751483859.JavaMail.zimbra@redhat.com>
In-Reply-To: <mailman.5359.1571746554.2486.kexec@lists.infradead.org>
References: <mailman.5359.1571746554.2486.kexec@lists.infradead.org>
Subject: Re: [PATCH 1/3 v4] x86/kdump: always reserve the low 1MiB when the
 crashkernel option is specified
MIME-Version: 1.0
X-Originating-IP: [10.18.17.5, 10.4.195.17]
Thread-Topic: x86/kdump: always reserve the low 1MiB when the crashkernel
 option is specified
Thread-Index: ei+xNfRr63t0joNfGRO2z+9klRiUMQ==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-MC-Unique: NoHoFbu0OrKpoT0WpTpGfQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_063810_081169_39761FEB 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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



----- Original Message -----

> > 
> > [root linux]$ crash vmlinux
> > /var/crash/127.0.0.1-2019-09-19-08\:31\:27/vmcore
> > WARNING: kernel relocated [240MB]: patching 97110 gdb minimal_symbol values
> > 
> >       KERNEL: /var/crash/127.0.0.1-2019-09-19-08:31:27/vmlinux
> >     DUMPFILE: /var/crash/127.0.0.1-2019-09-19-08:31:27/vmcore  [PARTIAL DUMP]
> >         CPUS: 128
> >         DATE: Thu Sep 19 08:31:18 2019
> >       UPTIME: 00:01:21
> > LOAD AVERAGE: 0.16, 0.07, 0.02
> >        TASKS: 1343
> >     NODENAME: amd-ethanol
> >      RELEASE: 5.3.0-rc7+
> >      VERSION: #4 SMP Thu Sep 19 08:14:00 EDT 2019
> >      MACHINE: x86_64  (2195 Mhz)
> >       MEMORY: 127.9 GB
> >        PANIC: "Kernel panic - not syncing: sysrq triggered crash"
> >          PID: 9789
> >      COMMAND: "bash"
> >         TASK: "ffff89711894ae80  [THREAD_INFO: ffff89711894ae80]"
> >          CPU: 83
> >        STATE: TASK_RUNNING (PANIC)
> > 
> > crash> kmem -s|grep -i invalid
> > kmem: dma-kmalloc-512: slab:ffffd77680001c00 invalid freepointer:a6086ac099f0c5a4
> > kmem: dma-kmalloc-512: slab:ffffd77680001c00 invalid freepointer:a6086ac099f0c5a4
> > crash>
> 
> I fail to see what that's trying to tell me? You have invalid pointers?

Correct, because the pointer values are encrypted.  The command is walking through the
singly-linked list of free objects in a slab from the dma-kmalloc-512 slab cache.  The
slab memory had been allocated from low memory, and because of the  problem at hand,
it was was copied to the vmcore in its encrypted state.

Dave 


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
