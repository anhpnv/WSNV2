function path=Greedy(All_CH,id,angle)
Rmax = 30;
finish_point = [50 50];
start_point = [All_CH(id,2) All_CH(id,3)];
cos_theta = cos(angle*pi/180);
distance_to_finish = 0;
k=0;
n=1;
path(1) = id;
vector_start_finish = [finish_point(1)-start_point(1) finish_point(2)-start_point(2)];
for i=1:1:length(All_CH)
    vector_start_CH = [All_CH(i,2)-start_point(1) All_CH(i,3)-start_point(2)];
    cos_start_CH = (dot(vector_start_CH,vector_start_finish))/(norm(vector_start_CH)*norm(vector_start_finish));
    if vector_start_CH <= Rmax && cos_start_CH <= cos_theta
        distance_in_start_finish = norm(vector_start_CH) * cos_start_CH;
        if distance_to_finish <= distance_in_start_finish
            k = i;
        end
    end
end

end