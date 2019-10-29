Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C581FE8038
	for <lists+kexec@lfdr.de>; Tue, 29 Oct 2019 07:26:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zgn+exaPd99aUSdhuA42IyPrL+rTUJXm1VbQDpDpA9s=; b=kDPCix42XoaeOw
	c3Mkn4SZD2NKSvXz1rKtXxfl5l0SJnxIj8cMWzJFitAmsfSgbEZFN67mM+I6VIrZJiW7UGzUnCIMa
	HkG58UMrB5Os6eXXhccPdui0ZVpV9KiCfubGYg3GpVOPjra4/ZolV9K48oXlA66n0HuwOZU2mBRY7
	6iZd1PcIMfcW+A7VRwABvfX/h9fBdGmvtLDdw1IK0MFVv700vFlS5jZZ05+ioUs0J7ETrFQWpAgCq
	dmndWi+ntJEi2RRsVUuSq+EU553zIpjGGPKk07PBeALKI6PoA+dOiHGF72wPUK7zJB/kxXmG9P3PK
	aWGo5Q0lshF7Ati3lZWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPKx8-000573-Dx; Tue, 29 Oct 2019 06:26:02 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPKx4-00056c-Hl
 for kexec@lists.infradead.org; Tue, 29 Oct 2019 06:25:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1572330357;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=X50ijSp+B0o1arpNjHljt3f++0frPk6KMXEog3CQ89o=;
 b=EVfIm37wdB9DWbMS3V/xLSC/6Annw5+OiLbbrL7WXCGHwmAl/L0wuc4x/gbDiJ3hmHx1SD
 qRvKvX0sp1PCyPvqEeRVuiBroYxThyFOhbmlnvn6H+NA5bdHaWDHcakCruza1wFgwV+IfM
 WNq//QjesL9RzK+QWlVAY3fmmT4obd8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-182-P6sGBN67PIm5dGAhj0AmYw-1; Tue, 29 Oct 2019 02:25:53 -0400
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8D07A1005500;
 Tue, 29 Oct 2019 06:25:51 +0000 (UTC)
Received: from localhost (ovpn-12-27.pek2.redhat.com [10.72.12.27])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id B61FF5C1D6;
 Tue, 29 Oct 2019 06:25:45 +0000 (UTC)
Date: Tue, 29 Oct 2019 14:25:43 +0800
From: Baoquan He <bhe@redhat.com>
To: lijiang <lijiang@redhat.com>
Subject: Re: [PATCH 1/2 v7] x86/kdump: always reserve the low 1MiB when the
 crashkernel option is specified
Message-ID: <20191029062543.GC7616@MiWiFi-R3L-srv>
References: <20191029021059.22070-1-lijiang@redhat.com>
 <20191029021059.22070-2-lijiang@redhat.com>
 <20191029052842.GA7616@MiWiFi-R3L-srv>
 <ffb0d2d3-31c3-fba0-e0f4-bd48999a033e@redhat.com>
MIME-Version: 1.0
In-Reply-To: <ffb0d2d3-31c3-fba0-e0f4-bd48999a033e@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-MC-Unique: P6sGBN67PIm5dGAhj0AmYw-1
X-Mimecast-Spam-Score: 0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_232558_659644_1A9C3945 
X-CRM114-Status: GOOD (  16.82  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: jgross@suse.com, Thomas.Lendacky@amd.com, horms@verge.net.au,
 x86@kernel.org, kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 dhowells@redhat.com, mingo@redhat.com, bp@alien8.de, ebiederm@xmission.com,
 hpa@zytor.com, tglx@linutronix.de, dyoung@redhat.com, d.hatayama@fujitsu.com,
 vgoyal@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 10/29/19 at 02:06pm, lijiang wrote:
> >>  struct crash_memmap_data {
> >> @@ -68,6 +70,19 @@ static inline void cpu_crash_vmclear_loaded_vmcss(void)
> >>  	rcu_read_unlock();
> >>  }
> >>  
> >> +/*
> >> + * When the crashkernel option is specified, only use the low
> >> + * 1MiB for the real mode trampoline.
> >> + */
> >> +void __init kexec_reserve_low_1MiB(void)
> > 
> > Thanks for the effort, Lianbo. I believe everyone is confident with this
> > solution and fix.
> > 
> > I have a tiny concern, why the function name is
> > kexec_reserve_low_1MiB(), but not kexec_reserve_low_1M()?
> 
> Thanks for your comment, Baoquan.
> 
> It means that kernel will reserve 1M 'Byte' memory, the function name does not
> have special meaning.
> 
> Would you mind if i change it to the crash_reserve_low_1M()?

Yes, crash_xx looks better since it's only related to crash dumping. As
for 1M, not very sure, see if other people have comment about it. Anyway,
crash_reserve_low_1M() looks good to me. Thanks.

> 
> void __init crash_reserve_low_1M(void)
> 
> Thanks.
> Lianbo
> 
> > I searched in kernel code with below filter, didn't see MiB appearing in
> > a function name. I am not sure about it either, just ask.
> > 
> > git grep "_[1-9]*M " arch/ kernel/ mm include/ drivers/ net/ init fs crypto/ certs/ ipc lib
> > 
> > Thanks
> > Baoquan
> > 
> >> +{
> >> +	if (cmdline_find_option(boot_command_line, "crashkernel",
> >> +				NULL, 0) > 0) {
> >> +		memblock_reserve(0, 1<<20);
> >> +		pr_info("Reserving the low 1MiB of memory for crashkernel\n");
> >> +	}
> >> +}
> >> +
> >>  #if defined(CONFIG_SMP) && defined(CONFIG_X86_LOCAL_APIC)
> >>  
> >>  static void kdump_nmi_callback(int cpu, struct pt_regs *regs)
> >> diff --git a/arch/x86/realmode/init.c b/arch/x86/realmode/init.c
> >> index 7dce39c8c034..b8bbd0017ca8 100644
> >> --- a/arch/x86/realmode/init.c
> >> +++ b/arch/x86/realmode/init.c
> >> @@ -8,6 +8,7 @@
> >>  #include <asm/pgtable.h>
> >>  #include <asm/realmode.h>
> >>  #include <asm/tlbflush.h>
> >> +#include <asm/crash.h>
> >>  
> >>  struct real_mode_header *real_mode_header;
> >>  u32 *trampoline_cr4_features;
> >> @@ -34,6 +35,7 @@ void __init reserve_real_mode(void)
> >>  
> >>  	memblock_reserve(mem, size);
> >>  	set_real_mode_mem(mem);
> >> +	kexec_reserve_low_1MiB();
> >>  }
> >>  
> >>  static void __init setup_real_mode(void)
> >> -- 
> >> 2.17.1
> >>


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
