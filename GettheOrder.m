function [Database,Order]=GettheOrder(Database,FindingTable)
l=length(FindingTable);
for i=1:l
    NumofFigure=find(strcmp({Database.Figure},FindingTable{i,1})==1);
    NumofCondition=find(cell2mat({Database.Condition})==FindingTable{i,2});
    NumforCondition=intersect(NumofFigure,NumofCondition);
    Result=cell2mat({Database(NumforCondition).Result});
    Num={Database(NumforCondition).Num};
    [output,order]=sort(Result,'descend');
    Table(1,:)=num2cell(output);
    Table(2,:)=Num(1,order);
    score=1-[0:length(order)-1]/length(order);
    TopL=output(1);
    if(FindingTable{i,3}==1)
        if(TopL<Order(i-1).LowerL)
            score=score*0.24;
            TopL=Order(i-1).TopL;
            UpperL=Order(i-1).UpperL;
            MedianL=Order(i-1).MedianL;
            LowerL=Order(i-1).LowerL;
        elseif(TopL<Order(i-1).MedianL)
            score=score*0.49;
            TopL=Order(i-1).TopL;
            UpperL=Order(i-1).UpperL;
            MedianL=Order(i-1).MedianL;
            if(~isempty(find(score==0.25)))
                if(output(find(score==0.25))>Order(i-1).LowerL)
                    LowerL=output(find(score==0.25));
                else
                    LowerL=Order(i-1).LowerL;
                    score(find(output<LowerL))=score(find(output<LowerL))/max(score(find(output<LowerL)))*0.24;
                end
            else
                FR=find(score>0.25);
                if((output(FR(end)+1)+output(FR(end)))/2>Order(i-1).LowerL)
                    LowerL=(output(FR(end)+1)+output(FR(end)))/2;
                else
                    LowerL=Order(i-1).LowerL;
                    score(find(output<LowerL))=score(find(output<LowerL))/max(score(find(output<LowerL)))*0.24;
                end
            end
        elseif(TopL<Order(i-1).UpperL)
            score=score*0.74;
            TopL=Order(i-1).TopL;
            UpperL=Order(i-1).UpperL;
            if(~isempty(find(score==0.5)))
                if(output(find(score==0.5))>Order(i-1).MedianL)
                    MedianL=output(find(score==0.5));
                else
                    MedianL=Order(i-1).MedianL;
                    score(find(output<MedianL))=score(find(output<MedianL))/max(score(find(output<MedianL)))*0.49;
                end
            else
                FR=find(score>0.5);
                if((output(FR(end)+1)+output(FR(end)))/2>Order(i-1).MedianL)
                    MedianL=(output(FR(end)+1)+output(FR(end)))/2;
                else
                    MedianL=Order(i-1).MedianL;
                    score(find(output<MedianL))=score(find(output<MedianL))/max(score(find(output<MedianL)))*0.49;
                end
            end
            if(~isempty(find(score==0.25)))
                if(output(find(score==0.25))>Order(i-1).LowerL)
                    LowerL=output(find(score==0.25));
                else
                    LowerL=Order(i-1).LowerL;
                    score(find(output<LowerL))=score(find(output<LowerL))/max(score(find(output<LowerL)))*0.24;
                end
            else
                FR=find(score>0.25);
                if((output(FR(end)+1)+output(FR(end)))/2>Order(i-1).LowerL)
                    LowerL=(output(FR(end)+1)+output(FR(end)))/2;
                else
                    LowerL=Order(i-1).LowerL;
                    score(find(output<LowerL))=score(find(output<LowerL))/max(score(find(output<LowerL)))*0.24;
                end
            end
        elseif(TopL<Order(i-1).TopL)
            score=score*0.9;
            TopL=Order(i-1).TopL;
            if(~isempty(find(score==0.75)))
                if(output(find(score==0.75))>Order(i-1).UpperL)
                    UpperL=output(find(score==0.75));
                else
                    UpperL=Order(i-1).UpperL;
                    score(find(output<UpperL))=score(find(output<UpperL))/max(score(find(output<UpperL)))*0.74;
                end
            else
                FR=find(score>0.75);
                if((output(FR(end)+1)+output(FR(end)))/2>Order(i-1).UpperL)
                    UpperL=(output(FR(end)+1)+output(FR(end)))/2;
                else
                    UpperL=Order(i-1).UpperL;
                    score(find(output<UpperL))=score(find(output<UpperL))/max(score(find(output<UpperL)))*0.74;
                end
            end
            if(~isempty(find(score==0.5)))
                if(output(find(score==0.5))>Order(i-1).MedianL)
                    MedianL=output(find(score==0.5));
                else
                    MedianL=Order(i-1).MedianL;
                    score(find(output<MedianL))=score(find(output<MedianL))/max(score(find(output<MedianL)))*0.49;
                end
            else
                FR=find(score>0.5);
                if((output(FR(end)+1)+output(FR(end)))/2>Order(i-1).MedianL)
                    MedianL=(output(FR(end)+1)+output(FR(end)))/2;
                else
                    MedianL=Order(i-1).MedianL;
                    score(find(output<MedianL))=score(find(output<MedianL))/max(score(find(output<MedianL)))*0.49;
                end
            end
            if(~isempty(find(score==0.25)))
                if(output(find(score==0.25))>Order(i-1).LowerL)
                    LowerL=output(find(score==0.25));
                else
                    LowerL=Order(i-1).LowerL;
                    score(find(output<LowerL))=score(find(output<LowerL))/max(score(find(output<LowerL)))*0.24;
                end
            else
                FR=find(score>0.25);
                if((output(FR(end)+1)+output(FR(end)))/2>Order(i-1).LowerL)
                    LowerL=(output(FR(end)+1)+output(FR(end)))/2;
                else
                    LowerL=Order(i-1).LowerL;
                    score(find(output<LowerL))=score(find(output<LowerL))/max(score(find(output<LowerL)))*0.24;
                end
            end
        else
            TopL=output(1);
            if(~isempty(find(score==0.75)))
                if(output(find(score==0.75))>Order(i-1).UpperL)
                    UpperL=output(find(score==0.75));
                else
                    UpperL=Order(i-1).UpperL;
                    score(find(output<UpperL))=score(find(output<UpperL))/max(score(find(output<UpperL)))*0.74;
                end
            else
                FR=find(score>0.75);
                if((output(FR(end)+1)+output(FR(end)))/2>Order(i-1).UpperL)
                    UpperL=(output(FR(end)+1)+output(FR(end)))/2;
                else
                    UpperL=Order(i-1).UpperL;
                    score(find(output<UpperL))=score(find(output<UpperL))/max(score(find(output<UpperL)))*0.74;
                end
            end
            if(~isempty(find(score==0.5)))
                if(output(find(score==0.5))>Order(i-1).MedianL)
                    MedianL=output(find(score==0.5));
                else
                    MedianL=Order(i-1).MedianL;
                    score(find(output<MedianL))=score(find(output<MedianL))/max(score(find(output<MedianL)))*0.49;
                end
            else
                FR=find(score>0.5);
                if((output(FR(end)+1)+output(FR(end)))/2>Order(i-1).MedianL)
                    MedianL=(output(FR(end)+1)+output(FR(end)))/2;
                else
                    MedianL=Order(i-1).MedianL;
                    score(find(output<MedianL))=score(find(output<MedianL))/max(score(find(output<MedianL)))*0.49;
                end
            end
            if(~isempty(find(score==0.25)))
                if(output(find(score==0.25))>Order(i-1).LowerL)
                    LowerL=output(find(score==0.25));
                else
                    LowerL=Order(i-1).LowerL;
                    score(find(output<LowerL))=score(find(output<LowerL))/max(score(find(output<LowerL)))*0.24;
                end
            else
                FR=find(score>0.25);
                if((output(FR(end)+1)+output(FR(end)))/2>Order(i-1).LowerL)
                    LowerL=(output(FR(end)+1)+output(FR(end)))/2;
                else
                    LowerL=Order(i-1).LowerL;
                    score(find(output<LowerL))=score(find(output<LowerL))/max(score(find(output<LowerL)))*0.24;
                end
            end
        end
    else
        TopL=output(1);
        if(~isempty(find(score==0.75)))
            UpperL=output(find(score==0.75));
        else
            FR=find(score>0.75);
            UpperL=(output(FR(end)+1)+output(FR(end)))/2;
        end
        if(~isempty(find(score==0.5)))
            MedianL=output(find(score==0.5));
        else
            FR=find(score>0.5);
            MedianL=(output(FR(end)+1)+output(FR(end)))/2;
        end
        if(~isempty(find(score==0.25)))
            LowerL=output(find(score==0.25));
        else
            FR=find(score>0.25);
            LowerL=(output(FR(end)+1)+output(FR(end)))/2;
        end
    end
    Table(3,:)=num2cell(score);
    Table(4,:)=num2cell(NumforCondition(order));
    DDD=Table(3,:);
    [Database(NumforCondition(order)).Score]=deal(DDD{:});
    if(FindingTable{i,4}==1)
        [Database(NumforCondition(order)).SmallScore]=deal(DDD{:});
    end
    if(FindingTable{i,4}==3)
        [Database(NumforCondition(order)).LargeScore]=deal(DDD{:});
    end
    Order(i).Figure=FindingTable{i,1};
    Order(i).Condition=FindingTable{i,2};
    Order(i).Table=Table;
    Order(i).TopL=TopL;
    Order(i).UpperL=UpperL;
    Order(i).MedianL=MedianL;
    Order(i).LowerL=LowerL;
    clearvars Table
end
end