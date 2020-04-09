Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A74C1A2D49
	for <lists+kexec@lfdr.de>; Thu,  9 Apr 2020 03:20:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pf+dDJ+6v1gmBC/PZn8PYbxIKL/+mV4upr4NGH9vCvo=; b=bDgYjV5tPIsZUQ
	TJkTGTYMlApCcwxy4iPg1UKpUh5qUdT4d4iCHNCciFvytXZ1YVBBupgOWSsDkz4k51XF8FcflzK49
	bXbMAY54zBIYySsHWGsSiX1Mjo/n8MLD6jczcLCI34KimUKlIrGFxX5xoN0AmCOUER1bcoWyPuB6e
	TuFegjM4pF0qUSCSY9IzmxA/3rxsJH6s2dTNAV76gPfLuPgrFoTRY4stsI5f0aXzcS73o3sg/o45V
	BAAt/1yeIfgT2znIjKNzPi/2yatzcgh2LLwBEttBpwCGEJUYfT1N6BG4MO5Dj7rX2U6U74h0ikiPR
	Xz698VMBxAaPbda2AeMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMLrh-0002jk-3b; Thu, 09 Apr 2020 01:20:21 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMLrd-0002jI-P3
 for kexec@lists.infradead.org; Thu, 09 Apr 2020 01:20:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586395216;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=N9F88D41AN3wkh0UGnOOoypW5BsejuARZQ7sojSiFhI=;
 b=eQTwJJf6vWYRqr1nzT8kIWwddtBy5j+h7gtwcjKgEG+CD9JICWPryRI0pw6jHua3Ck0bvV
 MVTzX2me4DOwRwtwBPR8n6BCyuA1yrK65bXSp0/hX37SlpVNoEZa0clNA8NQnFvcNQJwyh
 ldyN/bf7/JD+BoKbrwTgM3sk9aqh2Bs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-177-7q_H4IkgPEqEfQbfQ1clSg-1; Wed, 08 Apr 2020 21:20:10 -0400
X-MC-Unique: 7q_H4IkgPEqEfQbfQ1clSg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0826E8017F5;
 Thu,  9 Apr 2020 01:20:09 +0000 (UTC)
Received: from localhost (ovpn-12-133.pek2.redhat.com [10.72.12.133])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 7725B9DD78;
 Thu,  9 Apr 2020 01:20:05 +0000 (UTC)
Date: Thu, 9 Apr 2020 09:20:02 +0800
From: Baoquan He <bhe@redhat.com>
To: Vitaly Kuznetsov <vkuznets@redhat.com>
Subject: Re: [PATCH v2 0/3] KVM: VMX: Fix for kexec VMCLEAR and VMXON cleanup
Message-ID: <20200409012002.GT2402@MiWiFi-R3L-srv>
References: <20200321193751.24985-1-sean.j.christopherson@intel.com>
 <20200407110115.GA14381@MiWiFi-R3L-srv>
 <87r1wzlcwn.fsf@vitty.brq.redhat.com>
 <20200408151808.GS2402@MiWiFi-R3L-srv>
 <87mu7l2256.fsf@vitty.brq.redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87mu7l2256.fsf@vitty.brq.redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_182017_894274_4488F22D 
X-CRM114-Status: GOOD (  18.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: dzickus@redhat.com, Wanpeng Li <wanpengli@tencent.com>, kvm@vger.kernel.org,
 Joerg Roedel <joro@8bytes.org>, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 Paolo Bonzini <pbonzini@redhat.com>, dyoung@redhat.com,
 Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 04/08/20 at 09:44pm, Vitaly Kuznetsov wrote:
> Baoquan He <bhe@redhat.com> writes:
> 
> > On 04/07/20 at 02:04pm, Vitaly Kuznetsov wrote:
> >> Baoquan He <bhe@redhat.com> writes:
> >> 
> >> >
> >> > The trace is here. 
> >> >
> >> > [  132.480817] RIP: 0010:crash_vmclear_local_loaded_vmcss+0x57/0xd0 [kvm_intel] 
> >> 
> >> This is a known bug,
> >> 
> >> https://lore.kernel.org/kvm/20200401081348.1345307-1-vkuznets@redhat.com/
> >
> > Thanks for telling, Vitaly.
> >
> > I tested your patch, it works.
> >
> > One thing is I noticed a warning message when your patch is applied. When
> > I changed back to revert this patchset, didn't found this message. I didn't
> > look into the detail of network core code and the kvm vmx code, maybe it's
> > not relevant.
> >
> >
> > [ 3708.629234] Type was not set for devlink port.
> > [ 3708.629258] WARNING: CPU: 3 PID: 60 at net/core/devlink.c:7164 devlink_port_type_warn+0x11/0x20
> > [ 3708.632328] Modules linked in: rfkill sunrpc intel_powerclamp coretemp kvm_intel kvm irqbypass intel_cstate iTCO_wdt hpwdt intel_uncore gpio_ich iTCO_vendor_support pcspkr ipmi_ssif hpilo lpc_ich ipmi_si ipmi_devintf ipmi_msghandler acpi_power_meter pcc_cpufreq i7core_edac ip_tables xfs libcrc32c radeon i2c_algo_bit drm_kms_helper cec ttm crc32c_intel serio_raw drm ata_generic pata_acpi mlx4_core bnx2 hpsa scsi_transport_sas
> > [ 3708.640782] CPU: 3 PID: 60 Comm: kworker/3:1 Kdump: loaded Tainted: G          I       5.6.0+ #1
> > [ 3708.642715] Hardware name: HP ProLiant DL380 G6, BIOS P62 08/16/2015
> > [ 3708.644222] Workqueue: events devlink_port_type_warn
> > [ 3708.645349] RIP: 0010:devlink_port_type_warn+0x11/0x20
> 
> What's in the patchset you're testing? Is it Sean's series + my patch,
> or just my patch? In case it's the later I'm having hard times trying to
> see how this can be related, but in case it's the former the fact that
> we do stuff a little bit differently on kexec may actually be triggering
> the issue above. I still think that it's not causing it, just
> triggering.

I am testing on Linus's tree, this patchset is already there. I just
reverted these patchset, or apply your patch on top of it. Both of them
works. The devlink warning message is not related to this issue because
I found it too when this patchset are reverted.

While I would suggest adding kexec@lists.infradead.org when code changes
are related to kexec/kdump since we usually watch this mailing list.
LKML contains too many mails, we may miss this kind of change, have to
debug and test again. Thanks.

Baoquan


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
