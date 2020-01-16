Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19C2C13D2A1
	for <lists+kexec@lfdr.de>; Thu, 16 Jan 2020 04:18:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VMW1RbL6dacN+71LhQRsv+74MB4qVUIycbTuEmnhS48=; b=sA92uFqrCCStSY
	D24LOiBBNrrbdEOpJQM95MLI91LdL9L5mxw0uHY6IuNUZyZ0ownFsAQ3b3wjOEFgobKl5I3SN8z3m
	1eBV9roC1MTAevxTxC+0ITnoT4K6HRlzNs5slPCq4zlJl/l/Axvor6aIJ9y5t01iuJePn6XpJ+vK7
	GWlrgX/u75iMeaea2128RJ+pbCuV1I8pwY+jiM4FNpOqA/qxdbJghGH85uLwzMq/4De1jKqURxV47
	n2HChv3bb++Tng3fYH6VZzL7du/JOl4YIe3LVkEik3x+f0O2GxrIPFsf91kbAN7Qh/PEQoxKRAqgD
	p5ccjM+fsMoIrGTZYLew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irvfc-0002os-76; Thu, 16 Jan 2020 03:18:08 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irvfY-0002oM-SI
 for kexec@lists.infradead.org; Thu, 16 Jan 2020 03:18:06 +0000
Received: by mail-qk1-x741.google.com with SMTP id t129so17852173qke.10
 for <kexec@lists.infradead.org>; Wed, 15 Jan 2020 19:18:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=IEKlpc0uHkxg7ftyD2BWL9CXaM9Q/Pz80DDkjKwvweo=;
 b=P1GmzIqD8b1H52UsZBO6vLhfyQKw+5XhCQbyXBUP4lyrqOCdDn7gXUexGFXO1hPbIk
 ExvfzVLMduOxLvBgW5ThlxPceHlOVWxJWiyiGzL9yHi8U4SEEPaXhwp23CEkPMz9dUhd
 fZJzIEqr5Cwu7hWygq+yqwuBQpct1iENDjInmuhSOSDKdvU+u4pN1/D5K9tfuqc/vtFg
 JKI9sXpRp68dsjmttJkG0rJ3JHZvi5zHf/+Pr15LrnnP7cvCBBzMINzqykIOZeVusKlR
 kgJ35OUPIM2rZl57p1BQNGAi/B18+C1CkDZLyWBqsNbmV7cYg/uBXiVtNF0YqoQ1ZfKi
 QAew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=IEKlpc0uHkxg7ftyD2BWL9CXaM9Q/Pz80DDkjKwvweo=;
 b=Ceu45VpdNMC8tW8K6otw6UcMyZIdg+bJ1ubWYAW8Ufgvn634K01B9FJhb5T2ZQgfJg
 UUvmU55cq0rqHd13n2IZ5TAZmyBkUxVSPIAOSJXDutHnlv1kTo/iVTUbuQAcsKIhk7Pt
 LgKIXFkZczaF8y7/yiXwt1IbRw5Yz3QW9RAwjQUduBHW1JoZI3R+D0HUosUangf8oiov
 5HxRr1VEsDsO+4r7DRVKhigB7aSMXLemw97EyOtvJKDCb0ER2MJLKWLHMHA6q/lbNG+k
 jW+qI+sXPK6z2YeJeHG8wiY6vjgJO2gNAZr6On0E53J+5UeCLnChcLzXW5lOlU1Ljbul
 TOtw==
X-Gm-Message-State: APjAAAWh/kIil/heyM74BpiesSdMAq6YknaShe1RwaCgga4vmPtzeBad
 1xptRhcqFf9ZxECXZPor4pUDlw==
X-Google-Smtp-Source: APXvYqxEnOvPFqZnGHvzL6aowMsEqAo82LUHWuX7Ai9OEhP3xCOYIxAfgsg1apL6OGGjt7eetKxwYw==
X-Received: by 2002:ae9:e714:: with SMTP id m20mr30779300qka.403.1579144683349; 
 Wed, 15 Jan 2020 19:18:03 -0800 (PST)
Received: from [192.168.1.153] (pool-71-184-117-43.bstnma.fios.verizon.net.
 [71.184.117.43])
 by smtp.gmail.com with ESMTPSA id h1sm10724866qte.42.2020.01.15.19.18.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 15 Jan 2020 19:18:02 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.40.2.2.4\))
Subject: Re: [PATCH] mm/sparse: reset section's mem_map when fully deactivated
From: Qian Cai <cai@lca.pw>
In-Reply-To: <1579143668-27941-1-git-send-email-kernelfans@gmail.com>
Date: Wed, 15 Jan 2020 22:18:01 -0500
Message-Id: <F12319DE-7ECB-42E5-AF4C-FEFC78B7DAB1@lca.pw>
References: <1579143668-27941-1-git-send-email-kernelfans@gmail.com>
To: Pingfan Liu <kernelfans@gmail.com>
X-Mailer: Apple Mail (2.3608.40.2.2.4)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_191804_976857_625FBDF6 
X-CRM114-Status: GOOD (  19.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Kazuhito Hagio <k-hagio@ab.jp.nec.com>,
 David Hildenbrand <david@redhat.com>, kexec@lists.infradead.org,
 Michal Hocko <mhocko@kernel.org>, Linux-MM <linux-mm@kvack.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Dan Williams <dan.j.williams@intel.com>, Oscar Salvador <osalvador@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org



> On Jan 15, 2020, at 10:01 PM, Pingfan Liu <kernelfans@gmail.com> wrote:
> 
> When fully deactivated, it is meaningless to keep the value of a section's
> mem_map. And its mem_map will be reassigned during re-added.
> 
> Beside this, it breaks the user space tool "makedumpfile", which makes
> assumption that a hot-removed section having mem_map as NULL.

Well, tools like makedumpfile and the crash utility always has to copy with
low kernel implementation details changes like this. Why is it different this time?

> 
> The bug can be reproduced on IBM POWERVM by "drmgr -c mem -r -q 5" ,
> trigger a crash, and save vmcore by makedumpfile
> 
> Signed-off-by: Pingfan Liu <kernelfans@gmail.com>
> To: linux-mm@kvack.org
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: David Hildenbrand <david@redhat.com>
> Cc: Dan Williams <dan.j.williams@intel.com>
> Cc: Oscar Salvador <osalvador@suse.de>
> Cc: Michal Hocko <mhocko@kernel.org>
> Cc: kexec@lists.infradead.org
> Cc: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
> ---
> mm/sparse.c | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/mm/sparse.c b/mm/sparse.c
> index 3822ecb..fddac80 100644
> --- a/mm/sparse.c
> +++ b/mm/sparse.c
> @@ -789,7 +789,7 @@ static void section_deactivate(unsigned long pfn, unsigned long nr_pages,
> 			ms->usage = NULL;
> 		}
> 		memmap = sparse_decode_mem_map(ms->section_mem_map, section_nr);
> -		ms->section_mem_map = sparse_encode_mem_map(NULL, section_nr);
> +		ms->section_mem_map = NULL;
> 	}
> 
> 	if (section_is_early && memmap)
> -- 
> 2.7.5
> 
> 


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
