Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD4EF1A298D
	for <lists+kexec@lfdr.de>; Wed,  8 Apr 2020 21:44:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CuRWzIAlb/CoD6pXzG3BTs/LDLuFEzM0Oy76dAsdfRg=; b=GfydmOAMUA1TQV
	vg0GKWpg9gyzLWkx1PRUS9+Ohg4avGhV1YLrEWoBUaaCTxhCc5rrC/yV6b08FNoVeMdDCaR4gBxai
	PNuO4G0+2rffTH3y1Ty8yr89Ybi3ca8BPcOYkBw8vpMTayQPrvOPMDSmbyr+n0PRv/VzZjQoiyJA+
	EMimaeo8RpsVV+GqHFjCifZ7kU2vs6zQWKp67evqwWN8TcmFxjp3uV/Y3Ds6gRqZeZ9YTRSUROzcI
	xAWFY14Fc+Je/iPsW5GJm0CYZo3JKIoe4wm0LyEY07xB57PMxRH9DAmZmGDkuQ5rW/zOLF9JDcR+L
	6olWYbdnNPS3ZfiO1TpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMGd2-0004J3-VP; Wed, 08 Apr 2020 19:44:52 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMGd0-0004H9-A1
 for kexec@lists.infradead.org; Wed, 08 Apr 2020 19:44:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586375085;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=BJTubTK2sAcaWEenl3EU+q6ObJic6Awuvbc9Pw6wkWE=;
 b=ehlFDI+4y6BqpfCka3VQiiKGOzNhId1rZcS+j7+pdK5pJAfA9eeEuRQGniofemFMV42I1/
 RwR8omYk2rBPPv10qmeb9oFK387cqzrzRwDNWCshgkkiJiU4LYbD2iEkGQw7S+LhQrrBor
 STKrUPOPf+IWOfk8oslMFClMw1NI11w=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-55-9FgSy3GcNpW5XarjkfZo8w-1; Wed, 08 Apr 2020 15:44:41 -0400
X-MC-Unique: 9FgSy3GcNpW5XarjkfZo8w-1
Received: by mail-wm1-f70.google.com with SMTP id u6so798266wmm.6
 for <kexec@lists.infradead.org>; Wed, 08 Apr 2020 12:44:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=mYYuwLAboUvtz1WhP7yhVmIyNIoHfRUcQsmccBnO09E=;
 b=gI9+44t09i7EciaEjQTW9ghlF6zhNsOCg/dQ7ZsRCCBPhQWq4vYTcVoFgMJPdQIeR2
 c7N9sLuhl/VLG6CInDRo81ttUIl4dGkwX7SFbTEqYUeLBpPFCmn1SYjp9sTN5fRldyPj
 fWP0hP5DJXrEuJUkFdIRqdRPIdaBDn9VN09QTbmres+6VqMJbgE1vJKq8TyGmMSdFM/l
 BBd9eTJsj7iFTqUUVNHXeIuzTDO/E5N3SRyeXt51LXw4ofT0N129d9Z3x1v/OVuUgAaE
 bvpyYDRbPyoo5yY8mo/ZYvdidPDQYNsTFAEkg6dZu7j6Xr/vXjvV+L22eJf6WW6YgbyN
 dE9g==
X-Gm-Message-State: AGi0PuYZ66R6z/SXdCxn1mJXW2wNfS7GaXdYF+QGULEGMiRgcSIuDoNG
 8vTIf25GCKm1r75KjPYiaeGCcE/PY2LqJIh5COHOLYDZ3sV0FYcUKvrUmgohLm8ccYmSICqDbVH
 2KQCBmA3i07mKTxDeL81d
X-Received: by 2002:a5d:66c4:: with SMTP id k4mr10871380wrw.53.1586375080350; 
 Wed, 08 Apr 2020 12:44:40 -0700 (PDT)
X-Google-Smtp-Source: APiQypIlH1aPoYyskSLdulU2tyWq3L8x3JFlR6vFlGhIt4V5eB9TSlTUoLEINUgOmGMdu27vvjmcVQ==
X-Received: by 2002:a5d:66c4:: with SMTP id k4mr10871361wrw.53.1586375080112; 
 Wed, 08 Apr 2020 12:44:40 -0700 (PDT)
Received: from vitty.brq.redhat.com (g-server-2.ign.cz. [91.219.240.2])
 by smtp.gmail.com with ESMTPSA id u7sm724203wmg.41.2020.04.08.12.44.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Apr 2020 12:44:39 -0700 (PDT)
From: Vitaly Kuznetsov <vkuznets@redhat.com>
To: Baoquan He <bhe@redhat.com>
Subject: Re: [PATCH v2 0/3] KVM: VMX: Fix for kexec VMCLEAR and VMXON cleanup
In-Reply-To: <20200408151808.GS2402@MiWiFi-R3L-srv>
References: <20200321193751.24985-1-sean.j.christopherson@intel.com>
 <20200407110115.GA14381@MiWiFi-R3L-srv> <87r1wzlcwn.fsf@vitty.brq.redhat.com>
 <20200408151808.GS2402@MiWiFi-R3L-srv>
Date: Wed, 08 Apr 2020 21:44:37 +0200
Message-ID: <87mu7l2256.fsf@vitty.brq.redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_124450_424192_475EBE00 
X-CRM114-Status: GOOD (  11.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
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

Baoquan He <bhe@redhat.com> writes:

> On 04/07/20 at 02:04pm, Vitaly Kuznetsov wrote:
>> Baoquan He <bhe@redhat.com> writes:
>> 
>> >
>> > The trace is here. 
>> >
>> > [  132.480817] RIP: 0010:crash_vmclear_local_loaded_vmcss+0x57/0xd0 [kvm_intel] 
>> 
>> This is a known bug,
>> 
>> https://lore.kernel.org/kvm/20200401081348.1345307-1-vkuznets@redhat.com/
>
> Thanks for telling, Vitaly.
>
> I tested your patch, it works.
>
> One thing is I noticed a warning message when your patch is applied. When
> I changed back to revert this patchset, didn't found this message. I didn't
> look into the detail of network core code and the kvm vmx code, maybe it's
> not relevant.
>
>
> [ 3708.629234] Type was not set for devlink port.
> [ 3708.629258] WARNING: CPU: 3 PID: 60 at net/core/devlink.c:7164 devlink_port_type_warn+0x11/0x20
> [ 3708.632328] Modules linked in: rfkill sunrpc intel_powerclamp coretemp kvm_intel kvm irqbypass intel_cstate iTCO_wdt hpwdt intel_uncore gpio_ich iTCO_vendor_support pcspkr ipmi_ssif hpilo lpc_ich ipmi_si ipmi_devintf ipmi_msghandler acpi_power_meter pcc_cpufreq i7core_edac ip_tables xfs libcrc32c radeon i2c_algo_bit drm_kms_helper cec ttm crc32c_intel serio_raw drm ata_generic pata_acpi mlx4_core bnx2 hpsa scsi_transport_sas
> [ 3708.640782] CPU: 3 PID: 60 Comm: kworker/3:1 Kdump: loaded Tainted: G          I       5.6.0+ #1
> [ 3708.642715] Hardware name: HP ProLiant DL380 G6, BIOS P62 08/16/2015
> [ 3708.644222] Workqueue: events devlink_port_type_warn
> [ 3708.645349] RIP: 0010:devlink_port_type_warn+0x11/0x20

What's in the patchset you're testing? Is it Sean's series + my patch,
or just my patch? In case it's the later I'm having hard times trying to
see how this can be related, but in case it's the former the fact that
we do stuff a little bit differently on kexec may actually be triggering
the issue above. I still think that it's not causing it, just
triggering.

-- 
Vitaly


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
