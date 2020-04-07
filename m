Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E42601A0C67
	for <lists+kexec@lfdr.de>; Tue,  7 Apr 2020 13:01:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ug12WHTN007/yyTcasHgZ0Z0Q4clOUghteyy7NjCHTA=; b=jGSULE/D8cTIZU
	XVuShaLBeByE1O0//6Q0bzRJMdWxCeS+/KUkN2D2sLdZwMWO+R0qFE1TfTDkLFJYXfBoAS7QHyhtG
	VQ5cPkW+pqEtWSQdB0joJNUBzQ+SiMzjxDv8NiBLVMkD7w21R06Drqk4Oae1RXiacNM4bOuby92zQ
	EQh+JUhVqUqPdfnYMI2fyz4tgEZwem49OIji50o48qNiPM5GWsBeSqPwZ+pFbHED8VlJ00XBQeFe4
	4eivNd0fc31BZ1y0VEzs367/w0IDd7VCtr6n47ixD4J0J6KCQITmiWs32p68hUHcZL7W/GeAYbyxe
	NrH9E3b9oW/q4FBeUn5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLlz5-0004lm-Ek; Tue, 07 Apr 2020 11:01:35 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLlz1-0004l2-Ng
 for kexec@lists.infradead.org; Tue, 07 Apr 2020 11:01:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586257288;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=8h7WOmhqWbqsj2xXniOI5xjfIW2oGUv8L9dkNvwcCDM=;
 b=CN0nUyjctr3dwHZ1NLyOO2uA1sMspQyqDq1Sd2DlnYMd/YjpH300QFwDM71cmrwrJ1ItZ5
 DXNCKr9oi6MTnHK6y9WreMFKeSUc4/gABA/ZkI4r44rlXdEDCfhN88ik2EzO3SRFJ5JP2j
 EYmSzLa5u8AFN7xtcVnHhAOtED3ONtQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-168-9ThSrBYlPeGPa8K6lERIRg-1; Tue, 07 Apr 2020 07:01:23 -0400
X-MC-Unique: 9ThSrBYlPeGPa8K6lERIRg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1900B8017F3;
 Tue,  7 Apr 2020 11:01:22 +0000 (UTC)
Received: from localhost (ovpn-12-129.pek2.redhat.com [10.72.12.129])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 33E0092F83;
 Tue,  7 Apr 2020 11:01:17 +0000 (UTC)
Date: Tue, 7 Apr 2020 19:01:15 +0800
From: Baoquan He <bhe@redhat.com>
To: Paolo Bonzini <pbonzini@redhat.com>,
 Sean Christopherson <sean.j.christopherson@intel.com>
Subject: Re: [PATCH v2 0/3] KVM: VMX: Fix for kexec VMCLEAR and VMXON cleanup
Message-ID: <20200407110115.GA14381@MiWiFi-R3L-srv>
References: <20200321193751.24985-1-sean.j.christopherson@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200321193751.24985-1-sean.j.christopherson@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_040131_848900_01F8F276 
X-CRM114-Status: GOOD (  19.85  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 linux-kernel@vger.kernel.org, Vitaly Kuznetsov <vkuznets@redhat.com>,
 dyoung@redhat.com, Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 03/21/20 at 12:37pm, Sean Christopherson wrote:
> Patch 1 fixes a a theoretical bug where a crashdump NMI that arrives
> while KVM is messing with the percpu VMCS list would result in one or more
> VMCSes not being cleared, potentially causing memory corruption in the new
> kexec'd kernel.

I am wondering if this theoretical bug really exists. Now CKI of Redhat
reported crash dumping failed on below commit. I reserved a
intel machine and can reproduce it always. 

Commit: 5364abc57993 - Merge tag 'arc-5.7-rc1' of

From failure trace, it's the kvm vmx which caused this. I have reverted
them and the failure disappeared.

4f6ea0a87608 KVM: VMX: Gracefully handle faults on VMXON
d260f9ef50c7 KVM: VMX: Fold loaded_vmcs_init() into alloc_loaded_vmcs()
31603d4fc2bb KVM: VMX: Always VMCLEAR in-use VMCSes during crash with kexec support

The trace is here. 

[  132.476387] sysrq: Trigger a crash 
[  132.479829] Kernel panic - not syncing: sysrq triggered crash 
[  132.480817] CPU: 4 PID: 1975 Comm: runtest.sh Kdump: loaded Not tainted 5.6.0-5364abc.cki #1 
[  132.480817] Hardware name: Dell Inc. Precision R7610/, BIOS A08 11/21/2014 
[  132.480817] Call Trace: 
[  132.480817]  dump_stack+0x66/0x90 
[  132.480817]  panic+0x101/0x2e3 
[  132.480817]  ? printk+0x58/0x6f 
[  132.480817]  sysrq_handle_crash+0x11/0x20 
[  132.480817]  __handle_sysrq.cold+0x48/0x104 
[  132.480817]  write_sysrq_trigger+0x24/0x40 
[  132.480817]  proc_reg_write+0x3c/0x60 
[  132.480817]  vfs_write+0xb6/0x1a0 
[  132.480817]  ksys_write+0x5f/0xe0 
[  132.480817]  do_syscall_64+0x5b/0x1c0 
[  132.480817]  entry_SYSCALL_64_after_hwframe+0x44/0xa9 
[  132.480817] RIP: 0033:0x7f205575d4b7 
[  132.480817] Code: 64 89 02 48 c7 c0 ff ff ff ff eb bb 0f 1f 80 00 00 00 00 f3 0f 1e fa 64 8b 04 25 18 00 00 00 85 c0 75 10 b8 01 00 00 00 0f 05 <48> 3d 00 f0 ff ff 77 51 c3 48 83 ec 28 48 89 54 24 18 48 89 74 24 
[  132.480817] RSP: 002b:00007ffe6ab44a38 EFLAGS: 00000246 ORIG_RAX: 0000000000000001 
[  132.480817] RAX: ffffffffffffffda RBX: 0000000000000002 RCX: 00007f205575d4b7 
[  132.480817] RDX: 0000000000000002 RSI: 000055e2876e1da0 RDI: 0000000000000001 
[  132.480817] RBP: 000055e2876e1da0 R08: 000000000000000a R09: 0000000000000001 
[  132.480817] R10: 000055e2879bf930 R11: 0000000000000246 R12: 0000000000000002 
[  132.480817] R13: 00007f205582e500 R14: 0000000000000002 R15: 00007f205582e700 
[  132.480817] BUG: unable to handle page fault for address: ffffffffffffffc8 
[  132.480817] #PF: supervisor read access in kernel mode 
[  132.480817] #PF: error_code(0x0000) - not-present page 
[  132.480817] PGD 14460f067 P4D 14460f067 PUD 144611067 PMD 0  
[  132.480817] Oops: 0000 [#12] SMP PTI 
[  132.480817] CPU: 4 PID: 1975 Comm: runtest.sh Kdump: loaded Tainted: G      D           5.6.0-5364abc.cki #1 
[  132.480817] Hardware name: Dell Inc. Precision R7610/, BIOS A08 11/21/2014 
[  132.480817] RIP: 0010:crash_vmclear_local_loaded_vmcss+0x57/0xd0 [kvm_intel] 
[  132.480817] Code: c7 c5 40 e0 02 00 4a 8b 04 f5 80 69 42 85 48 8b 14 28 48 01 e8 48 39 c2 74 4d 4c 8d 6a c8 bb 00 00 00 80 49 c7 c4 00 00 00 80 <49> 8b 7d 00 48 89 fe 48 01 de 72 5c 4c 89 e0 48 2b 05 13 a8 88 c4 
[  132.480817] RSP: 0018:ffffa85d435dfcb0 EFLAGS: 00010007 
[  132.480817] RAX: ffff9c82ebb2e040 RBX: 0000000080000000 RCX: 000000000000080f 
[  132.480817] RDX: 0000000000000000 RSI: 00000000000000ff RDI: 000000000000080f 
[  132.480817] RBP: 000000000002e040 R08: 000000717702c90c R09: 0000000000000004 
[  132.480817] R10: 0000000000000009 R11: 0000000000000000 R12: ffffffff80000000 
[  132.480817] R13: ffffffffffffffc8 R14: 0000000000000004 R15: 0000000000000000 
[  132.480817] FS:  00007f2055668740(0000) GS:ffff9c82ebb00000(0000) knlGS:0000000000000000 
[  132.480817] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033 
[  132.480817] CR2: ffffffffffffffc8 CR3: 0000000151904003 CR4: 00000000000606e0 
[  132.480817] Call Trace: 
[  132.480817]  native_machine_crash_shutdown+0x45/0x190 
[  132.480817]  __crash_kexec+0x61/0x130 
[  132.480817]  ? __crash_kexec+0x9a/0x130 
[  132.480817]  ? panic+0x11d/0x2e3 
[  132.480817]  ? printk+0x58/0x6f 
[  132.480817]  ? sysrq_handle_crash+0x11/0x20 
[  132.480817]  ? __handle_sysrq.cold+0x48/0x104 
[  132.480817]  ? write_sysrq_trigger+0x24/0x40 
[  132.480817]  ? proc_reg_write+0x3c/0x60 
[  132.480817]  ? vfs_write+0xb6/0x1a0 
[  132.480817]  ? ksys_write+0x5f/0xe0 
[  132.480817]  ? do_syscall_64+0x5b/0x1c0 
[  132.480817]  ? entry_SYSCALL_64_after_hwframe+0x44/0xa9 

> 
> Patch 2 is cleanup that's made possible by patch 1.
> 
> Patch 3 isn't directly related, but it conflicts with the crash cleanup
> changes, both from a code and a semantics perspective.  Without the crash
> cleanup, IMO hardware_enable() should do crash_disable_local_vmclear()
> if VMXON fails, i.e. clean up after itself.  But hardware_disable()
> doesn't even do crash_disable_local_vmclear() (which is what got me
> looking at that code in the first place).  Basing the VMXON change on top
> of the crash cleanup avoids the debate entirely.
> 
> v2:
>   - Inverted the code flow, i.e. move code from loaded_vmcs_init() to
>     __loaded_vmcs_clear().  Trying to share loaded_vmcs_init() with
>     alloc_loaded_vmcs() was taking more code than it saved. [Paolo]
> 
> 
> Gory details on the crashdump bug:
> 
> I verified my analysis of the NMI bug by simulating what would happen if
> an NMI arrived in the middle of list_add() and list_del().  The below
> output matches expectations, e.g. nothing hangs, the entry being added
> doesn't show up, and the entry being deleted _does_ show up.
> 
> [    8.205898] KVM: testing NMI in list_add()
> [    8.205898] KVM: testing NMI in list_del()
> [    8.205899] KVM: found e3
> [    8.205899] KVM: found e2
> [    8.205899] KVM: found e1
> [    8.205900] KVM: found e3
> [    8.205900] KVM: found e1
> 
> static void vmx_test_list(struct list_head *list, struct list_head *e1,
>                           struct list_head *e2, struct list_head *e3)
> {
>         struct list_head *tmp;
> 
>         list_for_each(tmp, list) {
>                 if (tmp == e1)
>                         pr_warn("KVM: found e1\n");
>                 else if (tmp == e2)
>                         pr_warn("KVM: found e2\n");
>                 else if (tmp == e3)
>                         pr_warn("KVM: found e3\n");
>                 else
>                         pr_warn("KVM: kaboom\n");
>         }
> }
> 
> static int __init vmx_init(void)
> {
>         LIST_HEAD(list);
>         LIST_HEAD(e1);
>         LIST_HEAD(e2);
>         LIST_HEAD(e3);
> 
>         pr_warn("KVM: testing NMI in list_add()\n");
> 
>         list.next->prev = &e1;
>         vmx_test_list(&list, &e1, &e2, &e3);
> 
>         e1.next = list.next;
>         vmx_test_list(&list, &e1, &e2, &e3);
> 
>         e1.prev = &list;
>         vmx_test_list(&list, &e1, &e2, &e3);
> 
>         INIT_LIST_HEAD(&list);
>         INIT_LIST_HEAD(&e1);
> 
>         list_add(&e1, &list);
>         list_add(&e2, &list);
>         list_add(&e3, &list);
> 
>         pr_warn("KVM: testing NMI in list_del()\n");
> 
>         e3.prev = &e1;
>         vmx_test_list(&list, &e1, &e2, &e3);
> 
>         list_del(&e2);
>         list.prev = &e1;
>         vmx_test_list(&list, &e1, &e2, &e3);
> }
> 
> Sean Christopherson (3):
>   KVM: VMX: Always VMCLEAR in-use VMCSes during crash with kexec support
>   KVM: VMX: Fold loaded_vmcs_init() into alloc_loaded_vmcs()
>   KVM: VMX: Gracefully handle faults on VMXON
> 
>  arch/x86/kvm/vmx/vmx.c | 103 ++++++++++++++++-------------------------
>  arch/x86/kvm/vmx/vmx.h |   1 -
>  2 files changed, 40 insertions(+), 64 deletions(-)
> 
> -- 
> 2.24.1
> 


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
