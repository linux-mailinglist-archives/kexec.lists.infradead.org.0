Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0F6814D577
	for <lists+kexec@lfdr.de>; Thu, 30 Jan 2020 05:02:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=USupiDhZasB+rXXuFDVqnm4t3HzBy5MoBJc/skNimAM=; b=Bf5diqmX4zPtAe
	6bmdazdlHF4J3bLo1byboKNTzsdipR+2WtmZWqX4zJcumhk4DerrWb8ZRxBo9nQpYPnjfCvzmbki+
	jdZswg9TDIGsblQtnkzv/kaVHl+vBL2eGpJIlQKzB5L7Z3p4zWHt6TVdmVUVXbhilL6tw8rqbQu69
	rO+uHUWE8eED+/ckns275lForGL6RRxDq1U0mNZh3GH65lBaiutSuNLXEASIFVJvtp2rJYFyY5xCo
	Hwbxzr4/l8F1xHmOSkfjDbEZOa2RcxZETotggrPxeiebVnuOFkfgUZaiOVScDW3TauJssFGvk1/FS
	RHWNs7fxQ8BXIkjmSZCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ix12N-0006QU-O7; Thu, 30 Jan 2020 04:02:39 +0000
Received: from mail-pg1-x52f.google.com ([2607:f8b0:4864:20::52f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ix12K-0006P8-AC
 for kexec@lists.infradead.org; Thu, 30 Jan 2020 04:02:38 +0000
Received: by mail-pg1-x52f.google.com with SMTP id 6so956517pgk.0
 for <kexec@lists.infradead.org>; Wed, 29 Jan 2020 20:02:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=9gi7cftqQhgEACfQSG0oIMlygZz7GMQOh7VEOEdbmsk=;
 b=TkiYFdWKNw7Sp2JKCDubpt91jPpLEDCcOpRzE67lzrn4zUdF91ZeIBNvtsw1QkA5et
 2GJnr9gXAoUHg0NNr+GWAXmedY4i4yBw+0CstvfoRVyF60x/QbNS+Gastps2fRVBEiAJ
 N/kfKxZuLlsBWNv41ClMapYv2i8mMVb+OP2CIZfa8jGC08nyYbdHpwkqqKaU6poD5VmF
 4TMfbfiQs06gW0jbLZew1ZnArGD3aVMthyIEhJRs8y6w8OJ03PiJkLQMzBcYOsLqCD4Q
 nxdTslR0oSTmlW+JrZe1kSqZjR0oagOy/tjdoyYcRBQALabisuZ1dGyYro+jrvtAIWss
 hEDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=9gi7cftqQhgEACfQSG0oIMlygZz7GMQOh7VEOEdbmsk=;
 b=uAX/mFw2yRB0QPGmXIsKyaPPQzXDcWN2QmPVR0ACfhdAYHGvs5wKvx3lqzg6BM0gmJ
 kz0AbMFSIqAVfTQv/bz5XndZVKrNxJZlZDoMlZJ51Essk78h8AVx1jFBtf+42avHjcB6
 JBivpxkVKAgwy8sFm7Y4xMiBVgnXamq38A4Ggo8PvrwlWUtDKxMgUAz4P19OI7h3eq8t
 3n4J3QcCYr9YSZzfKGS7VGnCjyjdvsIh9pEcDLigM3OvrI+sjh1qpUwWWi4/bHHOQE0T
 LW9ruwZaOOsOxzLn0zYSaU54vnxlnIz1Z1LSMbtlqj6HuS+PUifMuHJZM/WT7kkYlhbl
 y9nA==
X-Gm-Message-State: APjAAAVvAWHCKDWbg42LWwhWJYoA+hegJySHvkZMY6ZMLA1D15Dl/0Gr
 ixNQcTcQUP4OoWyFTRSSr+E6uA==
X-Google-Smtp-Source: APXvYqygfj0eCdlxEcY/Q9qnem+Iu4pR2PO/Pv2r6Tz/SFwfD2kn37iJLTRwdI4m6x71W7niF7BisA==
X-Received: by 2002:a63:f62:: with SMTP id 34mr2736391pgp.184.1580356953827;
 Wed, 29 Jan 2020 20:02:33 -0800 (PST)
Received: from [192.168.1.188] ([66.219.217.145])
 by smtp.gmail.com with ESMTPSA id u26sm4210926pfn.46.2020.01.29.20.02.32
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 29 Jan 2020 20:02:33 -0800 (PST)
Subject: Re: [PATCH][v2] ata: ahci: Add shutdown to freeze hardware resources
 of ahci
To: Prabhakar Kushwaha <pkushwaha@marvell.com>,
 "linux-ide@vger.kernel.org" <linux-ide@vger.kernel.org>
References: <1579923437-12983-1-git-send-email-pkushwaha@marvell.com>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <d610a34d-16f5-1035-f3c3-f32a75aa0fe2@kernel.dk>
Date: Wed, 29 Jan 2020 21:02:31 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <1579923437-12983-1-git-send-email-pkushwaha@marvell.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_200236_359981_2F52D680 
X-CRM114-Status: UNSURE (   8.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:52f listed in]
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
Cc: Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 Kamlakant Patel <kamlakantp@marvell.com>,
 "helgaas@kernel.org" <helgaas@kernel.org>,
 "prabhakar.pkin@gmail.com" <prabhakar.pkin@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 1/24/20 8:37 PM, Prabhakar Kushwaha wrote:
> device_shutdown() called from reboot or power_shutdown expect
> all devices to be shutdown. Same is true for even ahci pci driver.
> As no ahci shutdown function is implemented, the ata subsystem
> always remains alive with DMA & interrupt support. File system 
> related calls should not be honored after device_shutdown().
> 
> So defining ahci pci driver shutdown to freeze hardware (mask
> interrupt, stop DMA engine and free DMA resources).

Applied, thanks.

-- 
Jens Axboe


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
