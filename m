Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6925F1A0D4F
	for <lists+kexec@lfdr.de>; Tue,  7 Apr 2020 14:05:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iXPViKmbA8Erqq9joXDgUt0oJ7k/iWJANcc0lMEpz0U=; b=bWEV0RKCameNsn
	DMfskzVaqYUfCvNvPRt7I0yTFF7FZ9MyU65rhhhWt5gEVKLheGrUNBEWf/MpZbzHZUUUtPQPWaIlt
	K3MdvXkX6momTMkV4f8xzE7hmtGjeRwEX9A+JLp23u7zLeUb37oBTNOpUNQNSfJ31O2EH/TLAX5dk
	lOjnv66csNHTOJ3N79NnGxW+bJyfIKoLMN/B6fMaX7Vx2BNWYhJIA2okEieCOd/swZYnZggW/1FnR
	grae/VlseQwb1nPuAUSvBZYrQY8UMM83i6Y+m6022UGk+AYNlgfl7I/2l8tsI7Up/FZ3OTYE3aHf/
	9cZKESTfJxA0yR7Mtq6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLmyp-0003t4-5k; Tue, 07 Apr 2020 12:05:23 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLmym-0003sO-2W
 for kexec@lists.infradead.org; Tue, 07 Apr 2020 12:05:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586261118;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=mQK2vkfqDhjRgt1vTWcM+vfLTNhBI7Qj9grBb9d7TIY=;
 b=B9C44y/R6gmHjRqgaaEkG3PKFmN5mFCxypxeWfkOYn8qMjsuPz9Ju4M8irVEPNlCqpOVNS
 6vsF4G6ZKxhUvWct9oDpfNHmLQqXsKGXhU3HZLzo2a40+CbF2OdGtuiWyEbElKaB7Z602G
 mHuzcvG0nVAYI1ryo9H+va2MQDJXTjk=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-252-9ODY-jfaMdyBmNpDoJk_fQ-1; Tue, 07 Apr 2020 08:04:59 -0400
X-MC-Unique: 9ODY-jfaMdyBmNpDoJk_fQ-1
Received: by mail-wr1-f72.google.com with SMTP id y1so1647406wrp.5
 for <kexec@lists.infradead.org>; Tue, 07 Apr 2020 05:04:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=xs2PYMoagJh94p0hVD/QmfuH7llxM6LPUQDf48wdDxQ=;
 b=C1FIASqe1AqlXsBIPJ9c5tWtAbJGHBuh2xfxSwPBMVDSVxDfIXG3qdy+whUfgeAj8L
 fEen0Nh3rCPrmB5ufsy4vVafJaLhubSOjditO+7+gMjSj6H2p1SL+PUUbAM0k4kAvmig
 7mBkpt6F1eQshV8sLLZ2zsJ63OkTsCe7vijCoM8sCdvtdiBiSEOVpW8C0mjy+udiUcOi
 w2zVxzv01ka1zfBYWSaQo4uVrCbJuyvNCZTEaHn+Hutpf7KCki2ljBPt6vlSO8pmvC3S
 u0IbPaz2VBBkW20s/CHhwU8zoCabqNSIAOTOSDQDKw60YazLC+c8J7ygp3rX/NT3xLAq
 2kEA==
X-Gm-Message-State: AGi0PuZ08yYkGEBxPi/sZNn8IDDJaZAPsbKQSezlY/RLJEQF5+aVVXtK
 EutaCzHyiAkBcAxJp6hiwz68DBOm21Q3AujfoDcTAp0ebKSm6bV4KuDU+5yMihFkZt91CKmvK55
 9rXnYXRC3lkZWSQvAP8gZ
X-Received: by 2002:a7b:cb59:: with SMTP id v25mr2068567wmj.139.1586261098266; 
 Tue, 07 Apr 2020 05:04:58 -0700 (PDT)
X-Google-Smtp-Source: APiQypIxvMFy1wzXFEuNpmyuAGAymcuopHHwSE4i0SJNeaS+clSzuREQQnSpHRy9z4S008CNZ2pTlw==
X-Received: by 2002:a7b:cb59:: with SMTP id v25mr2068545wmj.139.1586261098042; 
 Tue, 07 Apr 2020 05:04:58 -0700 (PDT)
Received: from vitty.brq.redhat.com (g-server-2.ign.cz. [91.219.240.2])
 by smtp.gmail.com with ESMTPSA id f4sm13282639wrp.80.2020.04.07.05.04.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Apr 2020 05:04:57 -0700 (PDT)
From: Vitaly Kuznetsov <vkuznets@redhat.com>
To: Baoquan He <bhe@redhat.com>
Subject: Re: [PATCH v2 0/3] KVM: VMX: Fix for kexec VMCLEAR and VMXON cleanup
In-Reply-To: <20200407110115.GA14381@MiWiFi-R3L-srv>
References: <20200321193751.24985-1-sean.j.christopherson@intel.com>
 <20200407110115.GA14381@MiWiFi-R3L-srv>
Date: Tue, 07 Apr 2020 14:04:56 +0200
Message-ID: <87r1wzlcwn.fsf@vitty.brq.redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_050520_189226_3F21BC36 
X-CRM114-Status: UNSURE (   4.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
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
> The trace is here. 
>
> [  132.480817] RIP: 0010:crash_vmclear_local_loaded_vmcss+0x57/0xd0 [kvm_intel] 

This is a known bug,

https://lore.kernel.org/kvm/20200401081348.1345307-1-vkuznets@redhat.com/

-- 
Vitaly


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
