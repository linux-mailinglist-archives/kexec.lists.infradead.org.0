Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0A771A2D4C
	for <lists+kexec@lfdr.de>; Thu,  9 Apr 2020 03:22:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QgJwkF0TL2aJ6p91sAH/34YCIq40ldU5qCIorufuiO4=; b=rorzSZMN0rYaVa
	Sd183gUDohXRYA+8GOK9gVC/+AtCkW6d6Aa+a3dn77ybVk8xSPuP9nspYHNSBHiVHyr8ZNmZ+Tfns
	QBZTNnOtfvzJW+WS11cB6c8BPVRoLsVnr8kWP0x7JsEIgF0ed2wmTn8omp9DsbFOKZgijgntSTCgw
	IaZCMoKKeo0ifRfaYFdYGOl4woajZuE577MYtjyRHvYCXzMbT4WxAbUUTFZYks5lcmjQf2vkLer7X
	kf/LypHHkyrKp0FAqs/81cpT9yJRZwA6P/lCBviZ/VnjpXWooJvRq4k+K8gSi0q4SHRIZkPKyUx/z
	31V9uyf6ajoYFbZoA0Xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMLtk-0002tf-U0; Thu, 09 Apr 2020 01:22:28 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMLth-0002sn-Mx
 for kexec@lists.infradead.org; Thu, 09 Apr 2020 01:22:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586395342;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=S6zaZRnflWlRwMkihtjBYFyGTc78AtlkI9xkR9S+YcM=;
 b=gk2kFmFPNLqsVmtagTAXb5aw+eHUgq5CVWsVCCAJk8DcHjlVcfXXq+kbU3213Tkn6fo4YI
 sEI/ypsCjsRNYuHIauP1gV0PchF3p+9JmiOjwPfFFxGvGMqPebhjZqJjoyPaDlrcKc+jY8
 qbOmlkB7f5Q67xN7XRC1nj/Gf3gLhEU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-410-4AEZWP3WPPqwU9YNqXMFhA-1; Wed, 08 Apr 2020 21:22:18 -0400
X-MC-Unique: 4AEZWP3WPPqwU9YNqXMFhA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7CF9E13FA;
 Thu,  9 Apr 2020 01:22:17 +0000 (UTC)
Received: from localhost (ovpn-12-133.pek2.redhat.com [10.72.12.133])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id D461660BFB;
 Thu,  9 Apr 2020 01:22:16 +0000 (UTC)
Date: Thu, 9 Apr 2020 09:22:14 +0800
From: Baoquan He <bhe@redhat.com>
To: Vitaly Kuznetsov <vkuznets@redhat.com>, kexec@lists.infradead.org
Subject: Re: [PATCH] KVM: VMX: fix crash cleanup when KVM wasn't used
Message-ID: <20200409012214.GB14381@MiWiFi-R3L-srv>
References: <20200401081348.1345307-1-vkuznets@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200401081348.1345307-1-vkuznets@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_182225_826046_A4634D2B 
X-CRM114-Status: GOOD (  19.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Wanpeng Li <wanpengli@tencent.com>, kvm@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 Paolo Bonzini <pbonzini@redhat.com>, Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 04/01/20 at 10:13am, Vitaly Kuznetsov wrote:
> If KVM wasn't used at all before we crash the cleanup procedure fails with
>  BUG: unable to handle page fault for address: ffffffffffffffc8
>  #PF: supervisor read access in kernel mode
>  #PF: error_code(0x0000) - not-present page
>  PGD 23215067 P4D 23215067 PUD 23217067 PMD 0
>  Oops: 0000 [#8] SMP PTI
>  CPU: 0 PID: 3542 Comm: bash Kdump: loaded Tainted: G      D           5.6.0-rc2+ #823
>  RIP: 0010:crash_vmclear_local_loaded_vmcss.cold+0x19/0x51 [kvm_intel]
> 
> The root cause is that loaded_vmcss_on_cpu list is not yet initialized,
> we initialize it in hardware_enable() but this only happens when we start
> a VM.
> 
> Previously, we used to have a bitmap with enabled CPUs and that was
> preventing [masking] the issue.
> 
> Initialized loaded_vmcss_on_cpu list earlier, right before we assign
> crash_vmclear_loaded_vmcss pointer. blocked_vcpu_on_cpu list and
> blocked_vcpu_on_cpu_lock are moved altogether for consistency.
> 
> Fixes: 31603d4fc2bb ("KVM: VMX: Always VMCLEAR in-use VMCSes during crash with kexec support")
> Signed-off-by: Vitaly Kuznetsov <vkuznets@redhat.com>

Kdump kernel hang can be reproduced on a bare metal machine of Intel always,
issue disappeared with this patch applied. Feel free to add:

Tested-by: Baoquan He <bhe@redhat.com>

> ---
>  arch/x86/kvm/vmx/vmx.c | 12 +++++++-----
>  1 file changed, 7 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/x86/kvm/vmx/vmx.c b/arch/x86/kvm/vmx/vmx.c
> index 3aba51d782e2..39a5dde12b79 100644
> --- a/arch/x86/kvm/vmx/vmx.c
> +++ b/arch/x86/kvm/vmx/vmx.c
> @@ -2257,10 +2257,6 @@ static int hardware_enable(void)
>  	    !hv_get_vp_assist_page(cpu))
>  		return -EFAULT;
>  
> -	INIT_LIST_HEAD(&per_cpu(loaded_vmcss_on_cpu, cpu));
> -	INIT_LIST_HEAD(&per_cpu(blocked_vcpu_on_cpu, cpu));
> -	spin_lock_init(&per_cpu(blocked_vcpu_on_cpu_lock, cpu));
> -
>  	r = kvm_cpu_vmxon(phys_addr);
>  	if (r)
>  		return r;
> @@ -8006,7 +8002,7 @@ module_exit(vmx_exit);
>  
>  static int __init vmx_init(void)
>  {
> -	int r;
> +	int r, cpu;
>  
>  #if IS_ENABLED(CONFIG_HYPERV)
>  	/*
> @@ -8060,6 +8056,12 @@ static int __init vmx_init(void)
>  		return r;
>  	}
>  
> +	for_each_possible_cpu(cpu) {
> +		INIT_LIST_HEAD(&per_cpu(loaded_vmcss_on_cpu, cpu));
> +		INIT_LIST_HEAD(&per_cpu(blocked_vcpu_on_cpu, cpu));
> +		spin_lock_init(&per_cpu(blocked_vcpu_on_cpu_lock, cpu));
> +	}
> +
>  #ifdef CONFIG_KEXEC_CORE
>  	rcu_assign_pointer(crash_vmclear_loaded_vmcss,
>  			   crash_vmclear_local_loaded_vmcss);
> -- 
> 2.25.1
> 


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
