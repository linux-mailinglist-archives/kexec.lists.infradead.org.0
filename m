Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E66CA1D5B73
	for <lists+kexec@lfdr.de>; Fri, 15 May 2020 23:29:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MN4zIeNjHtLLEelXOfjRygzTIdKcU2zC0ZsFEXzM/bU=; b=G0pzNLnjCcwcN0
	qhMV1q/mdGRXWUGtDLyrA4IXknQAWBbId5tCTFm6Ki6u3HsohBeh/pWowr8iZH9fMzm3yDMpQjFW2
	IlvIYtVPPxWTUf0rnLdEVrSEn7SmHpK6M9uCse7vY8fWd81BDj+PNtsOMs8xgtMv2zwuloaL0wfUc
	fZPC5BFKXxrpsF0pzsXmGem0xv8pvvn8OxXrjzRZb3j9962+RiKDFbDFbBPXHwQcSNAuEkLqK9dUn
	oYEvSz714A3O6t7EcNncuqMUUG789/nx+YHwW1fMvhyi8FvfOvS9rf8c9pGhvFrBqgdJTYUGofy21
	e1oIYusS+zkAbCc4WRtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZhtk-0001lD-6V; Fri, 15 May 2020 21:29:40 +0000
Received: from mail-pj1-f66.google.com ([209.85.216.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZhtg-0001kK-6B
 for kexec@lists.infradead.org; Fri, 15 May 2020 21:29:38 +0000
Received: by mail-pj1-f66.google.com with SMTP id n15so1560531pjt.4
 for <kexec@lists.infradead.org>; Fri, 15 May 2020 14:29:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=pYa0xileFKL+iC5XDDg4dnFXtyyvns7Y/zYemD6hOLM=;
 b=AL20neHD9BfciA0QDaPt0SFloTC84jBvv11/nDK7X4dSmMyETRK/ZdRkZnx0otsEr/
 RXvVSfR1b89gJWcvZFWzWcjhT+xjbhfQubUl0H869Ol2U2aGXwin5MzC7S0dSgV7CxIu
 X0b5KYfxJDecqmjQhO6kPvEwlSTmOC5lCZVgLo9dyWWRMthymg1y1v4qKnmIBcRzuuKA
 3O3KjKZDLYW+qOyj9/WOMJng8A1eEzv1Eo92BNrXZ+fol01MiL1Jd75M4jrs2THspEmB
 UZFexHELw1Zuu2tFiKVEj/kxixPvT7ZcS/NSYMLtwKLKXHUf7oKk2nb34xgKMO2HG8Q9
 PBaQ==
X-Gm-Message-State: AOAM532Oly2PvEKXQl7vZViRHCRMecJe9pLIMD08YjjTCUFAUCdLK2ue
 cDK/5dyJbPTPrUF3vVKmT/g=
X-Google-Smtp-Source: ABdhPJxPAb82N40CtrgVa22e2Jx7aU8YwsQhmb49exg+lY4xmlnjWtUKTOMO5be5VLroJHQEhh4qMQ==
X-Received: by 2002:a17:902:a5c2:: with SMTP id
 t2mr5435815plq.151.1589578175373; 
 Fri, 15 May 2020 14:29:35 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id k5sm2225238pjl.32.2020.05.15.14.29.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 May 2020 14:29:34 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id 9F48140246; Fri, 15 May 2020 21:29:33 +0000 (UTC)
Date: Fri, 15 May 2020 21:29:33 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH 0/3] fs: reduce export usage of kerne_read*() calls
Message-ID: <20200515212933.GD11244@42.do-not-panic.com>
References: <20200513152108.25669-1-mcgrof@kernel.org>
 <20200513181736.GA24342@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200513181736.GA24342@infradead.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_142936_225169_69830A1C 
X-CRM114-Status: UNSURE (   8.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mcgrof[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.66 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: rafael@kernel.org, zohar@linux.ibm.com, dhowells@redhat.com,
 paul@paul-moore.com, nayna@linux.ibm.com, jmorris@namei.org,
 geert@linux-m68k.org, dan.carpenter@oracle.com, keescook@chromium.org,
 scott.branden@broadcom.com, selinux@vger.kernel.org, viro@zeniv.linux.org.uk,
 skhan@linuxfoundation.org, eparis@parisplace.org, tglx@linutronix.de,
 gregkh@linuxfoundation.org, stephen.smalley.work@gmail.com,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-security-module@vger.kernel.org, ebiederm@xmission.com, jeyu@kernel.org,
 linux-fsdevel@vger.kernel.org, linux-integrity@vger.kernel.org,
 bauerman@linux.ibm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Wed, May 13, 2020 at 11:17:36AM -0700, Christoph Hellwig wrote:
> Can you also move kernel_read_* out of fs.h?  That header gets pulled
> in just about everywhere and doesn't really need function not related
> to the general fs interface.

Sure, where should I dump these?

  Luis

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
