Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7433E1A32FD
	for <lists+kexec@lfdr.de>; Thu,  9 Apr 2020 13:14:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=89hn4gwd+YF2TUq1VTi1FYBm0c4epmktj6jgSUwhjnQ=; b=l386eaTKSIhW8s
	mqE6pOGb3cyyO6JTfC+VctzDniOfTNtHD4V9fSoz6vSTPmDgyUfADeOy2E+1OMvt4hhiRLIoQXvJK
	PmR1WzRQk5O5sRNR3Nf6zPidwwhg+71QKo+1g1x3aqT/p0il+0Wdq3GTsSo0OJgl9lEDMFeiaqwLu
	9UI0y6LZWh/Vi/kTFq3Gn8kklWw91hr7BSWJ4sQ5YwhHiqs8wqimYHnWua8nAcTqJV7jZD2LABXh9
	XXfHvu4Jwj9YSR0jFxJpI/FCjsYE2xscLcxAYreZlRw8oXWu0UkOTbWoLhn42AeQnXIYUxPK6jo/g
	3NEquR/jZLVVYsMLD96A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMV8k-00089j-Jh; Thu, 09 Apr 2020 11:14:34 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMV8d-00088g-J2
 for kexec@lists.infradead.org; Thu, 09 Apr 2020 11:14:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586430866;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=6cpl+n8X+H/WZY5IkrBIFEMZQV57eBmdb4m2YX0izQY=;
 b=PSJ+bxPCI251D+eAmEfpS7/2xgcjUNxqmUKRpicEa2j5Uwyu2a/dWpMX5Tju0QdHhQBE+8
 jnR6T8KqlT86fMVEcBk1yyYiI0Rx7p33u01Kb4ri/81gXeTzHBxsw3H2U+wKa/DmuewFsU
 XRnPq0Q+AI+rw57d+5ZHQ2oBfdDp8FQ=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-5-9cgy0zU0O_mnQObafsGcQg-1; Thu, 09 Apr 2020 07:14:17 -0400
X-MC-Unique: 9cgy0zU0O_mnQObafsGcQg-1
Received: by mail-wr1-f70.google.com with SMTP id t8so260360wrq.22
 for <kexec@lists.infradead.org>; Thu, 09 Apr 2020 04:14:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=eVe7IfDc6Eg1zSotYzISNC1XY4K3ye5o8p4mKeTvCRU=;
 b=RNThIPMQxZUIS2QWyQQNkDWOCP5cF3ZlFtkshWo09JVpnx/cXtpEXgxWcEJFxgZTYJ
 yJ/h4uzuEkezmYMX1kTTFMMIUDRy+YOGJPooZpevOft2KvQW6eU/JfPUEfMpfn4tMkKk
 gZnqeYLdKhovlqg9EfeKTUIHWeiqelgcXQEIUNKAzYXme3l+n1tUya44evHdcnl18Frz
 x7yBYWZvzI32+Eu1SkgCcIKE4iTLKxhf1hG1mKfaBOV0Um42Hgkw7pCxpGVO32cKAIOw
 Hklr+5qr7G4BIqU4KtH20QqmwcHvM4ez0x/KxhgE4tmRsXmdEEWqIOUIm3lYaBCgsjcx
 qomg==
X-Gm-Message-State: AGi0Puac6o/ZzJHJbkxZ8RFia+tD+Lbgc/kPthkvU7xUOwL/I80SiQG7
 CUpAGC7cDJtGhFUuCIcDQ5F8mb48Igkam5vSx0Gf9eB3lRKI7jkr4G1WsijDeVQqrwjuwQVrkHT
 yU3SXlLKjG3K2x5Zwr90t
X-Received: by 2002:adf:aad7:: with SMTP id i23mr13446973wrc.184.1586430856639; 
 Thu, 09 Apr 2020 04:14:16 -0700 (PDT)
X-Google-Smtp-Source: APiQypJrJJvOfBtCg0nF+bFCAwjKhMQCswXXApj7bVfJMGmrNUaRyCwySn1n7/vsqTWSUHcBZMCe9Q==
X-Received: by 2002:adf:aad7:: with SMTP id i23mr13446952wrc.184.1586430856377; 
 Thu, 09 Apr 2020 04:14:16 -0700 (PDT)
Received: from vitty.brq.redhat.com (g-server-2.ign.cz. [91.219.240.2])
 by smtp.gmail.com with ESMTPSA id c20sm3387575wmd.36.2020.04.09.04.14.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Apr 2020 04:14:15 -0700 (PDT)
From: Vitaly Kuznetsov <vkuznets@redhat.com>
To: Baoquan He <bhe@redhat.com>
Subject: Re: [PATCH v2 0/3] KVM: VMX: Fix for kexec VMCLEAR and VMXON cleanup
In-Reply-To: <20200409012002.GT2402@MiWiFi-R3L-srv>
References: <20200321193751.24985-1-sean.j.christopherson@intel.com>
 <20200407110115.GA14381@MiWiFi-R3L-srv> <87r1wzlcwn.fsf@vitty.brq.redhat.com>
 <20200408151808.GS2402@MiWiFi-R3L-srv> <87mu7l2256.fsf@vitty.brq.redhat.com>
 <20200409012002.GT2402@MiWiFi-R3L-srv>
Date: Thu, 09 Apr 2020 13:14:14 +0200
Message-ID: <87imi829o9.fsf@vitty.brq.redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_041427_710714_C724DDBB 
X-CRM114-Status: UNSURE (   6.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

>
> While I would suggest adding kexec@lists.infradead.org when code changes
> are related to kexec/kdump since we usually watch this mailing list.
> LKML contains too many mails, we may miss this kind of change, have to
> debug and test again.
>

Definitely makes sense and I'll try my best to remember doing this
myself next time but the problem is that scripts/checkpatch.pl is not
smart enough, kexec related bits are scattered all over kernel and
drivers so I'm afraid you're missing a lot in kexec@ :-(

-- 
Vitaly


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
